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
alias jargon="cd ~/go/src/stash.redventures.net/dsc/jargon-api-go/"
alias swagger="docker run --rm -it -e GOPATH=$HOME/go:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger"
alias ssm="aws ssm get-parameters --names "

#alias FS='./';resize;clear;date;df -h $FS; echo "Largest Directories:"; du -hcx --max-depth=2 $FS 2>/dev/null | grep [0-9]G | sort -grk 1 | head -15 ;echo "Largest Files:"; nice -n 19 find $FS -mount -type f -print0 2>/dev/null| xargs -0 du -k | sort -rnk1| head -n20 |awk '{printf "%8d MB\t%s\n",($1/1024),$NF}'

eval "$(direnv hook zsh)"

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$GOBIN"
