#!/usr/bin/env bash

PATH_TO_ZSH=$HOME


# Check if Homebrew is installed
if ! type "brew" > /dev/null; then
  # install brew
  echo -e '\nInstalling the MacOS Package Manager, Homebrew...\n'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# check if iTerm2 is installed
if [ ! -f "/Applications/iTerm.app/Contents/MacOS/iTerm2" ]; then
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
  # Install patched Monoid fonts
  echo -e '\nInstalling patched Monoid Nerd Font ...\n'
  brew tap caskroom/fonts
  brew cask install font-monoid-nerd-font
fi

#check if Fira font is present
if [ ! -f "/$HOME/Library/Fonts/Fura Mono Regular Nerd Font Complete.otf" ]; then
  # Install patched Fira fonts
  echo -e '\nInstalling patched Fira Mono Nerd Font ...\n'
  brew tap caskroom/fonts
  brew cask install font-firamono-nerd-font
fi

# Check if ColorLS is installed
if ! type "colorls" > /dev/null; then
  # install ColorLS
  echo -e '\nInstalling the ColorLS...\n'
  # gem install colorls
  echo -e "
source $(dirname $(gem which colorls))/tab_complete.sh

# ColorLS alaises
alias ls='colorls -a --sd --report'
alias ld='colorls -d'
alias lf='colorls -f'
alias lc='colorls -lA --sd'" >> $PATH_TO_ZSH/.zshrc
fi

