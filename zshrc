# Update path
path+=('/Users/jberry/bin')
# or prepend
# path=('/Users/jberry/bin' $path)

export PATH

plugins=(virtualenv)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jberry/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#Use neovim nightly build
alias vim='nn'
alias vi='nn'

#Common commands improved
alias ls='ls -laG'

# Generate a (kinda) random password
alias randpw='date +%s | shasum | base64 | head -c 32 ; echo'

#Bazel
alias bq='bazel query ...'

#Directory shortcuts

eval "$(direnv hook zsh)"
