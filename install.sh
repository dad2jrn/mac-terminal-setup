#!/usr/bin/env bash

# Check if Homebrew is installed
if ! type "brew" > /dev/null; then
  # install foobar here
  echo -e '\nInstalling the MacOS Package Manager, Homebrew...\n'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# check if iTerm2 is installed
if [ ! -d "/Applications/iTerm.app/Contents/MacOS/iTerm2" ]; then
  # Install iTerm2
  echo -e '\nInstalling iTerm2...\n'
  brew cask install iterm2
fi

# check if zsh is installed
if ! type "zsh" > /dev/null ; then
  # Install zShell
  echo -e '\nInstalling zShell...\n'
  brew install zsh zsh-completions
fi

