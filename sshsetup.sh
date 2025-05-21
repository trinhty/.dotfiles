#!/bin/bash

# Install the following 
# gnupg gnupg-agent scdaemon pcscd


# Import the key
gpg --comand-fd=0 --pinetry-mode=loopback --edit-card <<EOF
fetch
quit
EOF

gpg -k

gpg --command-fd=0 --pinentry-mode=loopback --edit-key $KEYID <<EOF
trust
5
y
save
EOF

ssh-add -L | grep "cardno" > ~/.ssh/id_rsa_yubikey.pub

cat << EOF >> ~/.ssh/config
Host github.com
    IdentitiesOnly yes
    IdentityFile ~/.ssh/id_rsa_yubikey.pub
EOF 

gpg -K
export KEYID=
 
# Use gpg for signing git commit message
git config --global user.signingkey $KEYID

git config --global commit.gpgsign true
