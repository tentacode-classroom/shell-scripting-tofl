# MacPorts :
export PATH=/opt/local/bin:$PATH

# Apache2.4 :
export PATH=/opt/local/sbin/:$PATH

# Enable 256 colors in terminal :
export PATH=/usr/local/bin/:$PATH

# Webdev for Angular Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Colorize ls output
alias ls='ls -G'

# Angular ng command
export PATH=/Users/tom/.nvm/versions/node/v10.9.0/bin/:$PATH

# Go
export GOBIN=/Users/tom/Developer/Go/Tutorial/bin
export GOPATH=/Users/tom/Developer/Go/Tutorial
export PATH=$GOBIN:$PATH

# Alias bin/console
alias bc='bin/console'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# PROMPT
source ~/.prompt

