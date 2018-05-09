#!/usr/bin/env bash

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
if [ ! -d "/usr/local/Cellar/zsh" ]; then
  # Install zShell, zsh Completions, zsh syntax highlighting
  echo -e '\nInstalling zShell and Oh-My-ZSH framework...\n'
  brew install zsh zsh-completions
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  brew install zsh-syntax-highlighting
  ln -s /usr/local/Cellar/zsh-syntax-highlighting/0.6.0/share/zsh-syntax-highlighting/ $HOME/.oh-my-zsh/zsh-syntax-highlighting
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
  sudo gem install colorls
fi

if [ ! -f "$HOME/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme" ]; then
  # Install Spaceship theme
  echo -e '\nInstalling Oh-My-ZSH PowerLevel9K Theme...\n'
  git clone -q https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
  #setup simlink for theme
  rm -f $HOME/.zshrc
  curl https://raw.githubusercontent.com/dad2jrn/mac-terminal-setup/master/powerlvl9k.conf -o $HOME/.zshrc -s
fi

####  Set iTerm2 settings

echo -e "\nManual Settings you must perform to finish setup...\n
Step 1) Open $HOME/.zshrc and edit the line ZSH_THEME=\"robbyrussell\" and change theme name to \"powerlevel9k\".\n
Step 2) Open iTerm2 and go to Preferences > Profiles > Text and set to \"FuraMono Nerd Font\"\n
Step 3) Add any aliases to your $HOME/.zshrc file.
"