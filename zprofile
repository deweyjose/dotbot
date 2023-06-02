#!/bin/zsh

source ~/.shell/aliases
source ~/.shell/path
source ~/.shell/settings

if [ -f /opt/homebrew/bin/brew  ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

