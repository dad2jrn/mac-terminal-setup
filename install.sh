#!/usr/bin/env bash

install() {
	# Check if Homebrew is installed
	if ! type "brew" >/dev/null; then
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

	#check if Monoid Nerd Font ont is present
	if [ ! -f "/$HOME/Library/Fonts/Monoid Regular Nerd Font Complete.ttf" ]; then
		# Install patched Monoid fonts
		echo -e '\nInstalling patched Monoid Nerd Font ...\n'
		brew tap caskroom/fonts
		brew cask install font-monoid-nerd-font
	fi

	#check if Fira Nerd Font is present
	if [ ! -f "/$HOME/Library/Fonts/Fura Mono Regular Nerd Font Complete.otf" ]; then
		# Install patched Fira fonts
		echo -e '\nInstalling patched Fira Mono Nerd Font ...\n'
		brew tap caskroom/fonts
		brew cask install font-firamono-nerd-font
	fi

	# Check if ColorLS is installed
	if ! type "colorls" >/dev/null; then
		# install ColorLS
		echo -e '\nInstalling ColorLS...\n'
		sudo gem install colorls
	fi

	# Install PowerLEvel9K zsh theme
	if [ ! -f "$HOME/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme" ]; then
		# Install PowerLevel9k theme
		echo -e '\nInstalling Oh-My-ZSH PowerLevel9K Theme...\n'
		git clone -q https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
		#setup simlink for theme
		rm -f $HOME/.zshrc
		curl https://raw.githubusercontent.com/dad2jrn/mac-terminal-setup/master/powerlvl9k.conf -o $HOME/.zshrc -s
		if [ ! -f "$HOME/powerlevel9k.zsh" ]; then
			curl https://raw.githubusercontent.com/dad2jrn/mac-terminal-setup/master/powerlevel9k.zsh -o $HOME/powerlevel9k.zsh
		fi
	fi

	####  Set iTerm2 settings
	echo -e "\nManual Settings you must perform to finish setup...\n
  Step 1) Open iTerm2 and go to Preferences > Profiles > Text and set to \"FuraMono Nerd Font\"\n
  Step 2) Add any aliases to your $HOME/.zshrc file.
          - link to common alias ideas: (https://natelandau.com/my-mac-osx-bash_profile/)
					- link to PowerLevel9k theme documentation: (https://github.com/bhilburn/powerlevel9k/wiki)
  "
}

# function to display menus
menu() {
clear
echo -e "This installer will check for the following apps and plugins, etc and if they are not present this script will install them.

  - Homebrew (https://brew.sh/)

  - iTerm2 (https://www.iterm2.com/)

  - zShell & Oh-My-ZSH framework (https://github.com/robbyrussell/oh-my-zsh)
      - If you already have a $HOME/.zshrc file, this script will back it up as $HOME/.zshrc-pre

  - ZSH Syntax Highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)

  - Patched Nerd Fonts (https://nerdfonts.com/)
      - Monoid Nerd Font
      - Fira Nerd Font

  - ColorLS (https://github.com/athityakumar/colorls)

  - PowerLevel9K Oh-My-ZSH theme (https://github.com/bhilburn/powerlevel9k)

  - Create a custom $HOME/.zshrc file to configure the powerlevel9k theme

  - Add some usefull aliases to the $HOME/.zshrc file

  "

echo "Please select an option
1) Continue
2) Exit
"

read n
case $n in
    1) install;;
    2) exit;;
    *) menu;;
esac
}

menu