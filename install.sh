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
  echo -e '\nInstalling zShell and Oh-My-ZSH framework...\n'
  brew install zsh zsh-completions
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi


#check if monoid font is present
if [ ! -f "/$HOME/Library/Fonts/Monoid Regular Nerd Font Complete.ttf" ]; then
  # Install patched Monoid fonts and Fira Code fonts
  brew tap caskroom/fonts
  brew cask install font-monoid-nerd-font
fi
