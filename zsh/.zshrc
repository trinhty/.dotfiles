source /usr/share/nvm/init-nvm.sh

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/ty/.zshrc'

# Allow Variable Substition
setopt prompt_subst

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
# Version Control Info
autoload -Uz add-zsh-hook vcs_info


HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch notify
bindkey -v

# Before Displaying Prompt
add-zsh-hook precmd vcs_info

# Have vcs check for git changes
zstyle ':vcs_info:*' check-for-changes true
# Have unstaged as * and staged as +
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# %b = branch %u = unstaged changes %c = staged actions %a = current action
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# Displaying Prompt
PROMPT='[%F{green}%n%f][%F{blue}%B%~%b%f]%F{red}${vcs_info_msg_0_}%f%# '
RPROMPT='%F{red}%T%f[%F{yellow}%?%f]'

# Aliases
alias vim='nvim'
alias s='kitten ssh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.local/bin:$PATH

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export ELECTRON_OZONE_PLATFORM_HINT="wayland"
export ZSH_THEME="powerlevel10k/powerlevel10k"
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
