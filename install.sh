#!/usr/bin/env bash

PATH_TO_ZSH=$HOME/Desktop


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
if [ ! -d "/usr/local/bin/zsh" ]; then
  # Install zShell
  echo -e '\nInstalling zShell and Oh-My-ZSH framework...\n'
  brew install zsh zsh-completions zsh-syntax-highlighting
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

# if [ ! -f "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme" ]; then
#   # Install Spaceship theme
#   echo -e '\nInstalling Oh-My-ZSH Spaceship Theme...\n'
#   git clone -q https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
#   #setup simlink for theme
#   ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
#   echo -e "

# ###  Spaceship Prompt settings
# # source \"$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme\"

# SPACESHIP_PROMPT_ORDER=(
#   time
#   user
#   host
#   dir
#   git
#   hg
#   package
#   node
#   ruby
#   elixir
#   xcode
#   swift
#   golang
#   php
#   rust
#   julia
#   docker
#   aws
#   venv
#   conda
#   pyenv
#   dotnet
#   ember
#   kubecontext
#   battery
#   exec_time
#   line_sep
#   vi_mode
#   jobs
#   exit_code
#   char
# )

# # PROMPT
# SPACESHIP_PROMPT_SYMBOL=\" \uf061 \"
# SPACESHIP_PROMPT_ADD_NEWLINE=true
# SPACESHIP_PROMPT_SEPARATE_LINE=true
# SPACESHIP_PROMPT_PREFIXES_SHOW=true
# SPACESHIP_PROMPT_SUFFIXES_SHOW=false
# SPACESHIP_PROMPT_DEFAULT_PREFIX=\" \"
# SPACESHIP_PROMPT_DEFAULT_SUFFIX=\" \"

# # TIME
# SPACESHIP_TIME_SHOW=false
# SPACESHIP_TIME_PREFIX=\"at \"
# SPACESHIP_TIME_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_TIME_FORMAT=false
# SPACESHIP_TIME_12HR=false
# SPACESHIP_TIME_COLOR=\"yellow\"

# # EXECUTION TIME
# SPACESHIP_EXEC_TIME_SHOW=true
# SPACESHIP_EXEC_TIME_PREFIX=\" took \"
# SPACESHIP_EXEC_TIME_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_EXEC_TIME_COLOR=\"yellow\"
# SPACESHIP_EXEC_TIME_THRESHOLD=5000
# SPACESHIP_EXEC_TIME_MS=false

# # USER
# SPACESHIP_USER_SHOW=false
# SPACESHIP_USER_PREFIX=\"with \"
# SPACESHIP_USER_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_USER_COLOR=\"yellow\"
# SPACESHIP_USER_COLOR_ROOT=\"red\"

# # HOST
# SPACESHIP_HOST_SHOW=false
# SPACESHIP_HOST_PREFIX=\"at \"
# SPACESHIP_HOST_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_HOST_COLOR=\"green\"

# # DIR
# SPACESHIP_DIR_SHOW=true
# SPACESHIP_DIR_PREFIX=\"in \"
# SPACESHIP_DIR_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_DIR_TRUNC=3
# SPACESHIP_DIR_COLOR=\"cyan\"

# # GIT
# SPACESHIP_GIT_SHOW=true
# SPACESHIP_GIT_PREFIX=\"on \"
# SPACESHIP_GIT_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_GIT_SYMBOL=\" \"

# # GIT BRANCH
# SPACESHIP_GIT_BRANCH_SHOW=true
# SPACESHIP_GIT_BRANCH_PREFIX=\"$SPACESHIP_GIT_SYMBOL\"
# SPACESHIP_GIT_BRANCH_SUFFIX=\"\"
# SPACESHIP_GIT_BRANCH_COLOR=\"magenta\"

# # GIT STATUS
# SPACESHIP_GIT_STATUS_SHOW=true
# SPACESHIP_GIT_STATUS_PREFIX=\" [\"
# SPACESHIP_GIT_STATUS_SUFFIX=\"]\"
# SPACESHIP_GIT_STATUS_COLOR=\"red\"
# SPACESHIP_GIT_STATUS_UNTRACKED=\"?\"
# SPACESHIP_GIT_STATUS_ADDED=\"+\"
# SPACESHIP_GIT_STATUS_MODIFIED=\"!\"
# SPACESHIP_GIT_STATUS_RENAMED=\"»\"
# SPACESHIP_GIT_STATUS_DELETED=\"✘\"
# SPACESHIP_GIT_STATUS_STASHED=\"$\"
# SPACESHIP_GIT_STATUS_UNMERGED=\"=\"
# SPACESHIP_GIT_STATUS_AHEAD=\"⇡\"
# SPACESHIP_GIT_STATUS_BEHIND=\"⇣\"
# SPACESHIP_GIT_STATUS_DIVERGED=\"⇕\"

# # HG
# SPACESHIP_HG_SHOW=true
# SPACESHIP_HG_PREFIX=\"on \"
# SPACESHIP_HG_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_HG_SYMBOL=\"☿ \"
# # HG BRANCH
# SPACESHIP_HG_BRANCH_SHOW=true
# SPACESHIP_HG_BRANCH_PREFIX=\"$SPACESHIP_HG_SYMBOL\"
# SPACESHIP_HG_BRANCH_SUFFIX=\"\"
# SPACESHIP_HG_BRANCH_COLOR=\"magenta\"
# # HG STATUS
# SPACESHIP_HG_STATUS_SHOW=true
# SPACESHIP_HG_STATUS_PREFIX=\"[\"
# SPACESHIP_HG_STATUS_SUFFIX=\"]\"
# SPACESHIP_HG_STATUS_COLOR=\"red\"
# SPACESHIP_HG_STATUS_UNTRACKED=\"?\"
# SPACESHIP_HG_STATUS_ADDED=\"+\"
# SPACESHIP_HG_STATUS_MODIFIED=\"!\"
# SPACESHIP_HG_STATUS_DELETED=\"✘\"

# # PACKAGE
# SPACESHIP_PACKAGE_SHOW=true
# SPACESHIP_PACKAGE_PREFIX=\" is \"
# SPACESHIP_PACKAGE_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_PACKAGE_SYMBOL=\"📦\"
# SPACESHIP_PACKAGE_COLOR=\"red\"

# # NODE
# SPACESHIP_NODE_SHOW=true
# SPACESHIP_NODE_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_NODE_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_NODE_SYMBOL=\"\uf898 \"
# SPACESHIP_NODE_DEFAULT_VERSION=\"\"
# SPACESHIP_NODE_COLOR=\"cyan\"

# # RUBY
# SPACESHIP_RUBY_SHOW=true
# SPACESHIP_RUBY_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_RUBY_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_RUBY_SYMBOL=\"💎 \"
# SPACESHIP_RUBY_COLOR=\"red\"

# # ELIXIR
# SPACESHIP_ELIXIR_SHOW=true
# SPACESHIP_ELIXIR_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_ELIXIR_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_ELIXIR_SYMBOL=\"💧 \"
# SPACESHIP_ELIXIR_DEFAULT_VERSION=\"\"
# SPACESHIP_ELIXIR_COLOR=\"magenta\"

# # XCODE
# SPACESHIP_XCODE_SHOW_LOCAL=true
# SPACESHIP_XCODE_SHOW_GLOBAL=false
# SPACESHIP_XCODE_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_XCODE_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_XCODE_SYMBOL=\"🛠 \"
# SPACESHIP_XCODE_COLOR=\"blue\"

# # SWIFT
# SPACESHIP_SWIFT_SHOW_LOCAL=true
# SPACESHIP_SWIFT_SHOW_GLOBAL=false
# SPACESHIP_SWIFT_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_SWIFT_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_SWIFT_SYMBOL=\"🐦 \"
# SPACESHIP_SWIFT_COLOR=\"yellow\"

# # GOLANG
# SPACESHIP_GOLANG_SHOW=true
# SPACESHIP_GOLANG_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_GOLANG_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_GOLANG_SYMBOL=\"🐹 \"
# SPACESHIP_GOLANG_COLOR=\"cyan\"

# # PHP
# SPACESHIP_PHP_SHOW=true
# SPACESHIP_PHP_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_PHP_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_PHP_SYMBOL=\"🐘 \"
# SPACESHIP_PHP_COLOR=\"blue\"

# # RUST
# SPACESHIP_RUST_SHOW=true
# SPACESHIP_RUST_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_RUST_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_RUST_SYMBOL=\"𝗥 \"
# SPACESHIP_RUST_COLOR=\"red\"

# # JULIA
# SPACESHIP_JULIA_SHOW=true
# SPACESHIP_JULIA_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_JULIA_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_JULIA_SYMBOL=\"ஃ \"
# SPACESHIP_JULIA_COLOR=\"green\"

# # DOCKER
# SPACESHIP_DOCKER_SHOW=true
# SPACESHIP_DOCKER_PREFIX=\"on \"
# SPACESHIP_DOCKER_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_DOCKER_SYMBOL=\"🐳 \"
# SPACESHIP_DOCKER_COLOR=\"cyan\"

# # Amazon Web Services (AWS)
# SPACESHIP_AWS_SHOW=true
# SPACESHIP_AWS_PREFIX=\"using \"
# SPACESHIP_AWS_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_AWS_SYMBOL=\"☁️ \"
# SPACESHIP_AWS_COLOR=\"208\"

# # VENV
# SPACESHIP_VENV_SHOW=true
# SPACESHIP_VENV_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_VENV_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_VENV_COLOR=\"blue\"

# # CONDA
# SPACESHIP_CONDA_SHOW=true
# SPACESHIP_CONDA_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_CONDA_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_CONDA_SYMBOL=\"🅒 \"
# SPACESHIP_CONDA_COLOR=\"blue\"

# # PYENV
# SPACESHIP_PYENV_SHOW=true
# SPACESHIP_PYENV_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_PYENV_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_PYENV_SYMBOL=\"🐍 \"
# SPACESHIP_PYENV_COLOR=\"gold\"

# # DOTNET
# SPACESHIP_DOTNET_SHOW=true
# SPACESHIP_DOTNET_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_DOTNET_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_DOTNET_SYMBOL=\".NET \"
# SPACESHIP_DOTNET_COLOR=\"128\"

# # EMBER
# SPACESHIP_EMBER_SHOW=true
# SPACESHIP_EMBER_PREFIX=\"$SPACESHIP_PROMPT_DEFAULT_PREFIX\"
# SPACESHIP_EMBER_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_EMBER_SYMBOL=\"🐹 \"
# SPACESHIP_EMBER_COLOR=\"210\"

# # KUBECONTEXT
# SPACESHIP_KUBECONTEXT_SHOW=true
# SPACESHIP_KUBECONTEXT_PREFIX=\"at \"
# SPACESHIP_KUBECONTEXT_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_KUBECONTEXT_SYMBOL=\"☸️ \"
# SPACESHIP_KUBECONTEXT_COLOR=\"cyan\"

# # BATTERY
# SPACESHIP_BATTERY_SHOW=true
# SPACESHIP_BATTERY_ALWAYS_SHOW=false
# SPACESHIP_BATTERY_PREFIX=\"\"
# SPACESHIP_BATTERY_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_BATTERY_CHARGING_SYMBOL=\"⇡\"
# SPACESHIP_BATTERY_DISCHARGING_SYMBOL=\"⇣\"
# SPACESHIP_BATTERY_FULL_SYMBOL=\"•\"
# SPACESHIP_BATTERY_THRESHOLD=10

# # VI_MODE
# SPACESHIP_VI_MODE_SHOW=true
# SPACESHIP_VI_MODE_PREFIX=\"\"
# SPACESHIP_VI_MODE_SUFFIX=\"$SPACESHIP_PROMPT_DEFAULT_SUFFIX\"
# SPACESHIP_VI_MODE_INSERT=\"[I]\"
# SPACESHIP_VI_MODE_NORMAL=\"[N]\"
# SPACESHIP_VI_MODE_COLOR=\"white\"

# # JOBS
# SPACESHIP_JOBS_SHOW=\"true\"
# SPACESHIP_JOBS_PREFIX=\"\"
# SPACESHIP_JOBS_SUFFIX=\" \"
# SPACESHIP_JOBS_SYMBOL=\"✦\"
# SPACESHIP_JOBS_COLOR=\"blue\"

# # EXIT CODE
# SPACESHIP_EXIT_CODE_SHOW=false
# SPACESHIP_EXIT_CODE_PREFIX=\"(\"
# SPACESHIP_EXIT_CODE_SUFFIX=\") \"
# SPACESHIP_EXIT_CODE_SYMBOl=\"✘ \"
# SPACESHIP_EXIT_CODE_COLOR=\"red\"

# test -e \"${HOME}/.iterm2_shell_integration.zsh\" && source \"${HOME}/.iterm2_shell_integration.zsh\"

# " >> $PATH_TO_ZSH/.zshrc
# fi

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
Step 1) Open $HOME/.zshrc and edit the line ZSH_THEME=\"robbyrussell\" and change theme name to 'powerlevel9k' or 'spaceship'.\n
Step 2) Open iTerm2 > Preferences > Profiles > Text and set both 'Font' and 'Non-ASCII Font' to 'FuraMono Nerd Font'\n
Step 3)

"