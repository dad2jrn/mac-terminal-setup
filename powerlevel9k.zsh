#!usr/bin/env zsh
# vim:ft=zsh ts=4 sw=4 noet fenc=utf-8
###########################################################################
# @title POWERLEVEL9K Sample configuration file
#
# @source https://github.com/bhilburn/powerlevel9k
#
# @author [onaforeignshore](https://github.com/onaforeignshore)
#
# @version Last update: April 22, 2017
#
# @info
#  Please note:
#
#    - This configuration uses tab size 4 and no spaces.
#
#    - Everything is commented out, as this file is meant for you to
#      customize the settings to your liking. Simply uncomment the
#      applicable line to set your overrides.
#
#    - I use a "Nerd" font, so the unicode characters in this file
#      may not render correctly if you do not use a nerd font.
#
#  For troubleshooting, please refer to the
#  [wiki](https://github.com/bhilburn/powerlevel9k/wiki/Troubleshooting)
#
##

#=======================================
# TABLE OF CONTENTS
#=======================================
#
# === GENERAL INFORMATION
#     --- Segment Color Customization
#     --- Special Segment Colors
#     --- Visual Identifiers For Segments
#     --- Glue Segments Together
# === GENERAL SETTINGS
# === FONT SUPPORT
# === PROMPT CONFIGURATION
# === SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** context
#         *** dir
#         *** dir_writable - no additional settings
#         *** disk_usage
#         *** history - no additional settings
#         *** host - no additional settings
#         *** ip
#         *** load - no additional settings
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** root_indicator
#         *** ssh - no additional settings
#         *** status
#         *** swap - no additional settings
#         *** time
#         *** user - no additional settings
#         *** vi_mode
# === DEVELOPMENT ENVIRONMENT SEGMENTS
#         *** vcs
#         *** vcs symbols
# === LANGUAGE SEGMENTS
#     --- GoLang Segments
#         *** go_version - no additional settings
#     --- Javascript / Node.js Segments
#         *** node_version - no additional settings
#         *** nodeenv - no additional settings
#         *** nvm - no additional settings
#     --- PHP Segments
#         *** php_version - no additional settings
#         *** symfony_tests - no additional settings
#         *** symfony_version - no additional settings
#     --- Python Segments
#         *** virtualenv - no additional settings
#         *** anaconda
#         *** pyenv - no additional settings
#     --- Ruby Segments
#         *** chruby - no additional settings
#         *** rbenv - no additional settings
#         *** rspec_stats - no additional settings
#     --- Rust Segments
#         *** rust_version - no additional settings
#     --- Swift Segments
#         *** swift_version - no additional settings
# === CLOUD SEGMENTS
#     --- AWS Segments
#         *** aws
#         *** aws_eb_env - no additional settings
#     --- Docker Segments
#         *** docker_machine - no additional settings
# === OTHER SEGMENTS
#         *** command_execution_time
#         *** custom_command
# === MY CUSTOM SEGMENTS
# === COLOR SCHEMES
# === MY THEME OVERRIDES: COLORS
#     --- SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** context
#         *** date
#         *** dir
#         *** dir_writeable
#         *** disk_usage
#         *** history
#         *** ip
#         *** load
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** ssh
#         *** status
#         *** swap
#         *** time
#         *** todo
#         *** vi_mode
#     --- DEVELOPMENT ENVIRONMENT SEGMENTS
#         *** vcs
#     --- PHP Segments
#         *** symfony_tests
#     --- Python Segments
#         *** anaconda
#     --- Ruby Segments
#         *** rspec_stats
#     --- OTHER SEGMENTS
#         *** command_execution_time
#     --- My Custom Segments
# === MY THEME OVERRIDES: ICONS
#         *** Separators and Icons
#         *** General Icons
#     --- SYSTEM STATUS SEGMENTS
#         *** background_jobs
#         *** battery
#         *** date
#         *** dir
#         *** dir_writeable
#         *** disk_usage
#         *** history
#         *** host
#         *** ip
#         *** load
#         *** os_icon
#         *** public_ip
#         *** ram
#         *** root_indicator
#         *** ssh
#         *** swap
#         *** time
#         *** todo
#         *** user
#     --- Development Environment Segments
#     --- Javascript / Node.js Segments
#     --- PHP Segments
#         *** symfony_tests
#     --- Python Segments
#     --- Ruby Segments
#         *** rspec_stats
#     --- Rust Segments
#     --- Swift Segments
#     --- AWS Segments
#         *** aws
#     --- Docker Segments
#         *** docker_machine
#     --- OTHER SEGMENTS
#         *** execution_time
#         *** cursor shape
# === PROMPT CUSTOMIZATION
# === LOADING POWERLEVEL9K
#     --- Option 1: Install for Vanilla ZSH
#     --- Option 2: Install for Oh-My-ZSH
#     --- Option 3: Install for Prezto
#     --- Option 4: Install for antigen
#     --- Option 5: Install for Zplug
#     --- Option 6: Install for Zgen
#     --- Option 7: Install for Antibody
#     --- Option 8: Install for ZPM
#     --- Option 9: Install for ZIM
#

#=======================================
# GENERAL INFORMATION
#=======================================

#---------------------------------------
# Segment Color Customization
#---------------------------------------
#
# For each segment in your prompt, you can specify a foreground and background color by setting them in your ~/.zshrc.
#
# Format:
    POWERLEVEL9K_RVM_BACKGROUND="black"
    POWERLEVEL9K_RVM_FOREGROUND="249"
    POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
    POWERLEVEL9K_TIME_BACKGROUND="black"
    POWERLEVEL9K_TIME_FOREGROUND="249"
    POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
    POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
    POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
    POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
    POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
    POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
#
# Example:
#     POWERLEVEL9K_TIME_FOREGROUND="red"
#     POWERLEVEL9K_TIME_BACKGROUND="021" # Dark blue
#
# For the default color, you can use "$DEFAULT_COLOR".
# You can use color values, eg. "red", "blue", etc.
# You can also use colorcode values. For a full list of supported colors, run this little code in your terminal:
#
#     for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
#
# You can also set a segment to be printed in bold by setting the option to 'true'.
#
# Format:
#     POWERLEVEL9K_<segment>_BOLD=
#
# Example:
#     POWERLEVEL9K_TIME_BOLD=true
#

#---------------------------------------
# Special Segment Colors
#---------------------------------------
#
# Some segments have state. For example, if you become root, or modify a file in your version control system, segments
# try to reflect this fact by changing the color. For these segments you still can modify the color to your needs by
# setting a variable like POWERLEVEL9K_<name-of-segment>_<state>_BACKGROUND. Segments with state are:
#
#     SEGMENT           STATES
#     battery           LOW, CHARGING, CHARGED, DISCONNECTED
#     context           DEFAULT, ROOT
#     dir               HOME, HOME_SUBFOLDER, DEFAULT
#     load              CRITICAL, WARNING, DEFAULT
#     rspec_stats       STATS_GOOD, STATS_AVG, STATS_BAD
#     status            ERROR, OK (note: only, if verbose is not false)
#     symfony_tests     TESTS_GOOD, TESTS_AVG, TESTS_BAD
#     vcs               CLEAN, UNTRACKED, MODIFIED
#     vi_mode           NORMAL, INSERT
#
# Format:
#     POWERLEVEL9K_<segment>_<state>_FOREGROUND=""
#     POWERLEVEL9K_<segment>_<state>_BACKGROUND=""
#
# Example:
#     POWERLEVEL9K_VCS_CLEAN_FOREGROUND="blue"
#     POWERLEVEL9K_VCS_CLEAN_BACKGROUND="black"
#     POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
#     POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="black"
#     POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="red"
#     POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="black"
#
#     # Advanced `vi_mode` color customization
#     POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="teal"
#

#---------------------------------------
# Visual Identifiers For Segments
#---------------------------------------
#
# Most segment have a so called "visual identifier" which is an icon or string that serves as a "logo" for the
# segment. This identifier is displayed on the left side for left configured segments and on the right for right
# configured segments.
#
# Let's assume you have configured the load segment. This segment can have different states (CRITICAL, WARNING and
# NORMAL). Now, we want to display the segment in black and white and colorize only the visual identifier.
#
# Format:
#     POWERLEVEL9K_<segment>_<state>_VISUAL_IDENTIFIER_COLOR=""
#
# Example:
#     # Segment in black and white
#     POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
#     POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="white"
#     POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
#     POWERLEVEL9K_LOAD_WARNING_FOREGROUND="white"
#     POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
#     POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="white"
     # Colorize only the visual identifier
#      POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
#      POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
#      POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
# #

#---------------------------------------
# Glue Segments Together
#---------------------------------------
#
# It is possible to display two segments as one, by adding _joined to your segment definition. The segments are always
# joined with their predecessor, so be sure that this is always visible. Otherwise you may get unwanted results. For
# example, if you want to join status and background_jobs in your right prompt together, set:
#
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  time)
#
# This works with every segment, even with custom ones and with conditional ones.
#

#=======================================
# GENERAL SETTINGS
#=======================================
# Uncomment this line for ZIM installations
#POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme

# Uncomment this line for Antigen installations
#POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

#=======================================
# FONT SUPPORT
#=======================================

# NOTE:
# To use the features below, you have to install the font and make it the default font in your terminal emulator.

# For installation instructions for Powerline Fonts
# See: https://powerline.readthedocs.org/en/latest/installation/linux.html#fonts-installation

# Uncomment if you are using Awesome Powerline Font, and you prefer flat segment transitions
#POWERLEVEL9K_MODE="flat"

# Uncomment if you are using Awesome Terminal Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts
#POWERLEVEL9K_MODE="awesome-fontconfig"

# Uncomment if you are using Awesome Patched Font
# See: https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched
#POWERLEVEL9K_MODE="awesome-flat"

# Uncomment if you are using a Nerd supported font
# See: https://github.com/ryanoasis/nerd-fonts
# POWERLEVEL9K_MODE="nerdfont-fontconfig"

#=======================================
# PROMPT CONFIGURATION
#=======================================

# multiline prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true						# double line prompt
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true						# place the right prompt on second line
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true						# new line before prompt
# POWERLEVEL9K_DISABLE_RPROMPT=true							# disable the right prompt

# segment/sub segment separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\UE0C6 '				# 
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\UE0C5'				# 
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'			# 
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'			# 

#=======================================
# SYSTEM STATUS SEGMENTS
#=======================================

# *****  background_jobs  *****
# If there is more than one background job, this segment will show the number of jobs. Set this to false to turn this feature off.

POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true

# *****  battery  *****
# This segment will display your current battery status (fails gracefully on systems without a battery). It is
# supported on both OSX and Linux (note that it requires acpi on Linux).

POWERLEVEL9K_BATTERY_LOW_THRESHOLD=10						# Threshold to consider battery level critical.
POWERLEVEL9K_BATTERY_VERBOSE=true							# Display time remaining next to battery level.

# *****  context  *****
# The context segment (user@host string) is conditional. By default, it will only print if you are not your "normal"
# user (including if you are root), or if you are SSH"d to a remote host.
#
# To use this feature, make sure the context segment is enabled in your prompt elements (it is by default), and define
# a DEFAULT_USER in your ~/.zshrc.

export DEFAULT_USER="$USER"								# Username to consider a "default context" (you can also
															# set $USER).
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false						# Always show this segment, including $USER and hostname.
POWERLEVEL9K_ALWAYS_SHOW_USER=false							# Always show the username, but conditionalize the
															# hostname.
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@%m"						# Default context prompt (username@machine).

# Refer to the ZSH Documentation for all possible expansions, including deeper host depths.
# You can customize the context segment. For example, you can make it to print the full hostname by setting
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"

#POWERLEVEL9K_CONTEXT_HOST_DEPTH=							# variable to change how the hostname is displayed.

# See (ZSH Manual)[http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Login-information] for details.
# The default is set to %m which will show the hostname up to the first ‘.’ You can set it to %{N}m where N is an
# integer to show that many segments of system hostname. Setting N to a negative integer will show that many segments
# from the end of the hostname.

# *****  dir  *****
# The dir segment shows the current working directory. When using the "Awesome Powerline" fonts, there are additional
# glyphs, as well
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3							# If your shorten strategy, below, is entire directories,
															# this field determines how many directories to leave at
															# the end. If your shorten strategy is by character count,
															# this field determines how many characters to allow per
															# directory string.
POWERLEVEL9K_SHORTEN_STRATEGY="Default"					# How the directory strings should be truncated. See the
															# table below for more informations.
# POWERLEVEL9K_SHORTEN_DELIMITER=".."						# Delimiter to use in truncated strings. This can be any
															# string you choose, including an empty string if you wish
															# to have no delimiter.
POWERLEVEL9K_SHORTEN_DELIMITER="\u2026"						# …

#
#     Strategy Name                  Description
#     -------------                  -----------
#     Default                        Truncate whole directories from left. How many is defined by
#                                    POWERLEVEL9K_SHORTEN_DIR_LENGTH
#     truncate_middle                Truncates the middle part of a folder. E.g. you are in a folder named
#                                    "/MySuperProjects/AwesomeFiles/BoringOffice", then it will truncated to
#                                    "/MyS..cts/Awe..les/BoringOffice", if POWERLEVEL9K_SHORTEN_DIR_LENGTH=3 is also
#                                    set (controls the amount of characters to be left).
#     truncate_from_right            Just leaves the beginning of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/ro../Pr../office". How many characters will be untouched is
#                                    controlled by POWERLEVEL9K_SHORTEN_DIR_LENGTH.
#     truncate_with_package_name     Search for a package.json or composer.json and prints the name field to
#                                    abbreviate the directory path. The precedence and/or files could be set by
#                                    POWERLEVEL9K_DIR_PACKAGE_FILES=(package.json composer.json). Please note that
#                                    this currently looks for .git directory to determine the root of the project.
#     truncate_with_folder_marker    Search for a file that is specified by POWERLEVEL9K_SHORTEN_FOLDER_MARKER and
#                                    truncate everything before that (if found, otherwise stop on $HOME and ROOT).
#

# Double quotes are important here!
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{red} $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") %F{black}"
															# customize the directory separator
#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true					# omit the first character (usually a slash
															# that gets replaced if you set
															# POWERLEVEL9K_DIR_PATH_SEPARATOR)

#POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="~"

# *****  dir_writable - no additional settings  *****
# Displays a lock icon, if you do not have write permissions on the current folder.

# *****  disk_usage  *****
# The disk_usage segment will show the usage level of the partition that your current working directory resides in.

#POWERLEVEL9K_DISK_USAGE_ONLY_WARNING=false					# Hide the segment except when usage levels have hit
															# warning or critical levels.
#POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL=90					# The usage level that triggers a warning state.
#POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL=95					# The usage level that triggers a critical state.

# *****  history - no additional settings  *****
# The command number for the current line.

# *****  host - no additional settings  *****
# This segment displays the current host.

# *****  ip  *****
# This segment tries to examine all currently used network interfaces and prints the first address it finds.

#POWERLEVEL9K_IP_INTERFACE="None"							# The NIC for which you wish to display the IP address.
															# Example: eth0.

# *****  load - no additional settings  *****
# Your machine"s load averages.

# *****  os_icon  *****
# Display a nice little icon, depending on your operating system.

# *****  public_ip  *****
#This segment will display your public IP address. There are several methods of obtaining this information and by
# default it will try all of them starting with the most efficient. You can also specify which method you would like
# it to use. The methods available are dig using opendns, curl, or wget. The host used for wget and curl is
# http://ident.me by default but can be set to another host if you prefer.

#POWERLEVEL9K_PUBLIC_IP_FILE="/tmp/p8k_public_ip"			# This is the file your public IP is cached in.
#POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"				# This is the default host to get your public IP.
#POWERLEVEL9K_PUBLIC_IP_TIMEOUT=300							# The amount of time in seconds between refreshing your
															# cached IP.
#POWERLEVEL9K_PUBLIC_IP_METHODS=(dig curl wget)				# These methods in that order are used to refresh your IP.
#POWERLEVEL9K_PUBLIC_IP_NONE="None"							# The string displayed when an IP was not obtained

# *****  ram  *****
# Show free RAM.

POWERLEVEL9K_RAM_ELEMENTS="Both"							# Specify ram_free or swap_used to only show one or the
															# other rather than both.

# *****  root_indicator  *****
# An indicator if the user has superuser status.

# *****  ssh - no additional settings  *****
# Indicates whether or not you are in an SSH session.

# *****  status  *****
# This segment shows the return code of the last command.

POWERLEVEL9K_STATUS_VERBOSE=false							# show the error code when the last command returned an
															# error and optionally hide this segment when the last
															# command completed successfully by setting
															# POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE to false.
#POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true					# show this segment when the last command completed
															# successfully in non-verbose mode.

# *****  swap - no additional settings  *****
# Prints the current swap size.

# *****  time  *****
# Show system time.

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%}"						# ZSH time format to use in this segment.
#POWERLEVEL9K_TIME_FORMAT="%D{%S:%M:%H}"					# Reversed time format
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \Uf073  %m/%d/%y}"	# Output time, date, and a symbol  from the "Awesome
															# Powerline Font" set

# *****  user - no additional settings  *****
# This segment displays the current user.

# *****  vi_mode  *****
# This segment shows ZSH"s current input mode. Note that this is only useful if you are using the ZSH Line Editor (VI
# mode). You can enable this either by .zshrc configuration or using a plugin, like Oh-My-Zsh"s vi-mode plugin.

#POWERLEVEL9K_VI_INSERT_MODE_STRING="INSERT" # 				# String to display while in "Insert" mode.
#POWERLEVEL9K_VI_COMMAND_MODE_STRING="NORMAL" # 			# String to display while in "Command" mode.

#=======================================
# DEVELOPMENT ENVIRONMENT SEGMENTS
#=======================================

# *****  vcs  *****
# By default, the vcs segment will provide quite a bit of information.
#POWERLEVEL9K_HIDE_BRANCH_ICON=true							# set to hide the branch icon from the segment.
#POWERLEVEL9K_SHOW_CHANGESET=true							# set to display the hash/changeset in the segment.
#POWERLEVEL9K_CHANGESET_HASH_LENGTH=6						# How many characters of the hash/changeset to display in
															# the segment.
#POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=true					# set to reflect submodule status in the top-level
															# repository prompt.
#POWERLEVEL9K_VCS_HIDE_TAGS=true							# set to stop tags being displayed in the segment.

# *****  vcs symbols  *****
# The vcs segment uses various symbols to tell you the state of your repository. These symbols depend on your
# installed font and selected POWERLEVEL9K_MODE from the Installation section above.

#
#		Compatible	Powerline	Awesome				Explanation
#								Powerline
#		↑4			↑4			4 (\uf01b)			Number of commits your repository is ahead of your remote branch
#		↓5			↓5			5 (\uf01a)			Number of commits your repository is behind of your remote branch
#		⍟3			⍟3			3 (\uf48d)			Number of stashes, here 3.
#		●			●			 (\uf06a)			There are unstaged changes in your working copy
#		✚			✚			 (\uf055)			There are staged changes in your working copy
#		?			?			 (\uf059)			There are files in your working copy unknown to your repository
#		→			→			 (\uf403)			The name of your branch differs from its tracking branch.
#		☿			☿			 (\uf462)			A mercurial bookmark is active.
#		@			 (\ue0a0)	 (\uf418)			Branch Icon
#		None		None		2c3705 (\uf417)	The current commit hash. Here "2c3705"
#		None		None		 (\uf406)			Repository is a git repository
#		None		None		 (\uf0c3)			Repository is a Mercurial repository
#

#=======================================
# LANGUAGE SEGMENTS
#=======================================

#---------------------------------------
# GoLang Segments
#---------------------------------------

# *****  go_version - no additional settings  *****
# Show the current GO version

#---------------------------------------
# Javascript / Node.js Segments
#---------------------------------------

# *****  node_version - no additional settings  *****
# Show the version number of the installed Node.js

# *****  nodeenv - no additional settings  *****
# Prompt for displaying node version and environment name.
# See: https://github.com/ekalinin/nodeenv

# *****  nvm - no additional settings  *****
# Show the version of Node that is currently active, if it differs from the version used by NVM.

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  php_version - no additional settings  *****
# Show the current PHP version.

# *****  symfony_tests - no additional settings  *****
# The symfony_tests segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

# *****  symfony_version - no additional settings  *****
# Show the current symfony version, if you are in a symfony-Project dir.

#---------------------------------------
# Python Segments
#---------------------------------------

# *****  virtualenv - no additional settings  *****
# Your Python VirtualEnv.
# See: https://virtualenv.pypa.io/en/latest/

# *****  anaconda  *****
# This segment shows your active anaconda environment. It relies on either the CONDA_ENV_PATH or the CONDA_PREFIX
# (depending on the conda version) environment variable to be set which happens when you properly source activate
# an environment.

#POWERLEVEL9K_ANACONDA_LEFT_DELIMITER="("
#POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=")"

# *****  pyenv - no additional settings  *****
# Your active python version as reported by the first word of pyenv version. Note that the segment is not displayed if
# that word is system i.e. the segment is inactive if you are using system python.

#---------------------------------------
# Ruby Segments
#---------------------------------------

# *****  chruby - no additional settings  *****
# Ruby environment information using chruby (if one is active).

# *****  rbenv - no additional settings  *****
# This segment shows the version of Ruby being used when using rbenv to change your current Ruby stack. It figures out
# the version being used by taking the output of the rbenv version-name command. If rbenv is not in $PATH, nothing
# will be shown. If the current Ruby version is the same as the global Ruby version, nothing will be shown.

# *****  rspec_stats - no additional settings  *****
# The rspec_stats segment shows a ratio of "real" classes vs test classes in your source code. This is just a very
# simple ratio, and does not show your code coverage or any sophisticated stats. All this does is count your source
# files and test files, and calculate the ratio between them. Just enough to give you a quick overview about the test
# situation of the project you are dealing with.

#---------------------------------------
# Rust Segments
#---------------------------------------

# *****  rust_version - no additional settings  *****
# Display the current rust version and logo.  (\uE7A8)

#---------------------------------------
# Swift Segments
#---------------------------------------

# *****  swift_version - no additional settings  *****
# Show the version number of the installed Swift.

#=======================================
# CLOUD SEGMENTS
#=======================================

#---------------------------------------
# AWS Segments
#---------------------------------------

# *****  aws  *****
# If you would like to display the current AWS profile, add the aws segment to one of the prompts, and define
# AWS_DEFAULT_PROFILE in your ~/.zshrc

#AWS_DEFAULT_PROFILE=""										# your AWS profile name

# *****  aws_eb_env - no additional settings  *****
# The current Elastic Beanstalk Environment.

#---------------------------------------
# Docker Segments
#---------------------------------------

# *****  docker_machine - no additional settings  *****
# The current Docker Machine.

#=======================================
# OTHER SEGMENTS
#=======================================

# *****  command_execution_time  *****
# Display the time the previous command took to execute if the time is above
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD.
# The time is formatted to be "human readable", and so scales the units based on the length of execution time.
# If you want more precision, just set the POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION field.

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0			# Threshold above which to print this segment. Can be set
															# to 0 to always print.
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2			# Number of digits to use in the fractional part of the
															# time value.

# *****  custom_command  *****
# The custom_... segment allows you to turn the output of a custom command into a prompt segment. As an example, if
# you wanted to create a custom segment to display your WiFi signal strength, you might define a custom segment called
# custom_wifi_signal like this:
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="echo signal: \$(nmcli device wifi | grep yes | awk "{print \$8}")"
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

# If you prefer, you can also define the function in your .zshrc rather than putting it in-line with the variable
# export, as shown above. Just don"t forget to invoke your function from your segment! Example code that achieves the
# same result as the above:

zsh_wifi_signal(){
   local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{yellow}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{yellow}'

                [[ $speed -gt 100 ]] && color='%F{magenta}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                echo -n "%{$color%}\uf1eb   $speed Mb/s%{%f%}"
        fi
}
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
#=======================================
# MY CUSTOM SEGMENTS
#=======================================


#=======================================
# COLOR SCHEMES
#=======================================

POWERLEVEL9K_COLOR_SCHEME="dark"							# "light" or "dark"

#=======================================
# MY THEME OVERRIDES: COLORS
#=======================================

#---------------------------------------
# SYSTEM STATUS SEGMENTS
#---------------------------------------

# *****  background_jobs  *****
#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=""
#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=""
#POWERLEVEL9K_BACKGROUND_VISUAL_IDENTIFIER_COLOR=""

# *****  battery  *****
#POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=""
#POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=""
#POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=""
#POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=""
#POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=""
#POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=""
#POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_BATTERY_LOW_BACKGROUND=""
#POWERLEVEL9K_BATTERY_LOW_FOREGROUND=""
#POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR=""

# *****  context  *****
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=""
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=""
#POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=""
#POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=""
#POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_COLOR=""

# *****  date  *****
#POWERLEVEL9K_DATE_BACKGROUND=""
#POWERLEVEL9K_DATE_FOREGROUND=""
#POWERLEVEL9K_DATE_VISUAL_IDENTIFIER_COLOR=""

# *****  dir  *****
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=""
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=""
#POWERLEVEL9K_DIR_DEFAULT_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_DIR_HOME_BACKGROUND=""
#POWERLEVEL9K_DIR_HOME_FOREGROUND=""
#POWERLEVEL9K_DIR_HOME_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=""
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=""
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_VISUAL_IDENTIFIER_COLOR=""

# *****  dir_writeable  *****
#POWERLEVEL9K_DIR_WRITEABLE_BACKGROUND=""
#POWERLEVEL9K_DIR_WRITEABLE_FOREGROUND=""
#POWERLEVEL9K_DIR_WRITEABLE_VISUAL_IDENTIFIER_COLOR=""

# *****  disk_usage  *****
#POWERLEVEL9K_DISK_USAGE_BACKGROUND=""
#POWERLEVEL9K_DISK_USAGE_FOREGROUND=""
#POWERLEVEL9K_DISK_USAGE_VISUAL_IDENTIFIER_COLOR=""

# *****  history  *****
#POWERLEVEL9K_HISTORY_BACKGROUND=""
#POWERLEVEL9K_HISTORY_FOREGROUND=""
#POWERLEVEL9K_HISTORY_VISUAL_IDENTIFIER_COLOR=""

# *****  ip  *****
#POWERLEVEL9K_IP_BACKGROUND=""
#POWERLEVEL9K_IP_FOREGROUND=""
#POWERLEVEL9K_IP_VISUAL_IDENTIFIER_COLOR=""

# *****  load  *****
#POWERLEVEL9K_LOAD_DEFAULT_BACKGROUND=""
#POWERLEVEL9K_LOAD_DEFAULT_FOREGROUND=""
#POWERLEVEL9K_LOAD_DEFAULT_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_LOAD_WARNING_BACKGROUND=""
#POWERLEVEL9K_LOAD_WARNING_FOREGROUND=""
#POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND=""
#POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=""
#POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR=""

# *****  os_icon  *****
#POWERLEVEL9K_OS_ICON_BACKGROUND=""
#POWERLEVEL9K_OS_ICON_FOREGROUND=""
#POWERLEVEL9K_OS_ICON_VISUAL_IDENTIFIER_COLOR=""

# *****  public_ip  *****
#POWERLEVEL9K_PUBLIC_IP_BACKGROUND=""
#POWERLEVEL9K_PUBLIC_IP_FOREGROUND=""
#POWERLEVEL9K_PUBLIC_IP_VISUAL_IDENTIFIER_COLOR=""

# *****  ram  *****
#POWERLEVEL9K_RAM_BACKGROUND=""
#POWERLEVEL9K_RAM_FOREGROUND=""
#POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR=""

# *****  ssh  *****
#POWERLEVEL9K_SSH_BACKGROUND=""
#POWERLEVEL9K_SSH_FOREGROUND=""
#POWERLEVEL9K_SSH_VISUAL_IDENTIFIER_COLOR=""

# *****  status  *****
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND=""
#POWERLEVEL9K_STATUS_ERROR_FOREGROUND=""
#POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_STATUS_OK_BACKGROUND=""						# (note: only, if verbose is true)
#POWERLEVEL9K_STATUS_OK_FOREGROUND=""						# (note: only, if verbose is true)
#POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_COLOR=""			# (note: only, if verbose is true)

# *****  swap  *****
#POWERLEVEL9K_SWAP_BACKGROUND=""
#POWERLEVEL9K_SWAP_FOREGROUND=""
#POWERLEVEL9K_SWAP_VISUAL_IDENTIFIER_COLOR=""

# *****  time  *****
#POWERLEVEL9K_TIME_BACKGROUND=""
#POWERLEVEL9K_TIME_FOREGROUND=""
#POWERLEVEL9K_TIME_VISUAL_IDENTIFIER_COLOR=""

# *****  todo  *****
#POWERLEVEL9K_TODO_BACKGROUND=""
#POWERLEVEL9K_TODO_FOREGROUND=""
#POWERLEVEL9K_TODO_VISUAL_IDENTIFIER_COLOR=""

# *****  vi_mode  *****
#POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND=""
#POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND=""
#POWERLEVEL9K_VI_MODE_INSERT_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=""
#POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=""
#POWERLEVEL9K_VI_MODE_NORMAL_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# DEVELOPMENT ENVIRONMENT SEGMENTS
#---------------------------------------

# *****  vcs  *****
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND=""
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND=""
#POWERLEVEL9K_VCS_CLEAN_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=""
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=""
#POWERLEVEL9K_VCS_UNTRACKED_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=""
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=""
#POWERLEVEL9K_VCS_MODIFIED_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  symfony_tests  *****
#POWERLEVEL9K_SYMFONY_TESTS_AVG_BACKGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_AVG_FOREGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_AVG_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_SYMFONY_TESTS_BAD_BACKGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_BAD_FOREGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_BAD_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_SYMFONY_TESTS_GOOD_BACKGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_GOOD_FOREGROUND=""
#POWERLEVEL9K_SYMFONY_TESTS_GOOD_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# Python Segments
#---------------------------------------

# *****  anaconda  *****

#POWERLEVEL9K_ANACONDA_BACKGROUND=""
#POWERLEVEL9K_ANACONDA_FOREGROUND=""						# Note that you can modify the _FOREGROUND color without
															# affecting the icon color.
#POWERLEVEL9K_ANACONDA_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# Ruby Segments
#---------------------------------------

# *****  rspec_stats  *****
#POWERLEVEL9K_RSPEC_STATS_GOOD_BACKGROUND=""
#POWERLEVEL9K_RSPEC_STATS_GOOD_FOREGROUND=""
#POWERLEVEL9K_RSPEC_STATS_GOOD_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_RSPEC_STATS_AVG_BACKGROUND=""
#POWERLEVEL9K_RSPEC_STATS_AVG_FOREGROUND=""
#POWERLEVEL9K_RSPEC_STATS_AVG_VISUAL_IDENTIFIER_COLOR=""

#POWERLEVEL9K_RSPEC_STATS_BAD_BACKGROUND=""
#POWERLEVEL9K_RSPEC_STATS_BAD_FOREGROUND=""
#POWERLEVEL9K_RSPEC_STATS_BAD_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# OTHER SEGMENTS
#---------------------------------------

# *****  command_execution_time  *****
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=""
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_COLOR=""

#---------------------------------------
# My Custom Segments
#---------------------------------------


#=======================================
# MY THEME OVERRIDES: ICONS
#=======================================
# use "get_icon_names" to see all icons

# *****  Separators and Icons  *****
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
#POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=""
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""

# *****  General Icons  *****
#POWERLEVEL9K_OK_ICON=""
#POWERLEVEL9K_FAIL_ICON=""
#POWERLEVEL9K_CARRIAGE_RETURN_ICON=""
#POWERLEVEL9K_TODO_ICON=""

#---------------------------------------
# SYSTEM STATUS SEGMENTS
#---------------------------------------

# *****  background_jobs  *****
#POWERLEVEL9K_BACKGROUND_JOBS_ICON=""

# *****  battery  *****
#POWERLEVEL9K_BATTERY_ICON=""

# *****  date  *****
#POWERLEVEL9K_DATE_ICON=""

# *****  dir  *****
#POWERLEVEL9K_HOME_ICON=""
#POWERLEVEL9K_HOME_SUB_ICON=""
#POWERLEVEL9K_FOLDER_ICON=""

# *****  dir_writeable  *****
#POWERLEVEL9K_LOCK_ICON=""

# *****  disk_usage *****
#POWERLEVEL9K_DISK_ICON=""

# *****  history  *****
#POWERLEVEL9K_HISTORY_ICON=""

# *****  ip  *****
#POWERLEVEL9K_NETWORK_ICON=""

# *****  load  *****
#POWERLEVEL9K_LOAD_ICON=""

# *****  os_icon  *****
POWERLEVEL9K_APPLE_ICON="\uf79f"
#POWERLEVEL9K_FREEBSD_ICON=""
#POWERLEVEL9K_LINUX_ICON=""
#POWERLEVEL9K_SUNOS_ICON=""

# *****  public_ip  *****
#POWERLEVEL9K_PUBLIC_IP_ICON=""

# *****  ram  *****
#POWERLEVEL9K_RAM_ICON=""

# *****  root_indicator  *****
#POWERLEVEL9K_ROOT_ICON=""

# *****  ssh  *****
#POWERLEVEL9K_SSH_ICON=""

# *****  swap  *****
#POWERLEVEL9K_SWAP_ICON=""

# *****  time  *****
#POWERLEVEL9K_TIME_ICON=""

# *****  todo  *****
#POWERLEVEL9K_TODO_ICON=""

#---------------------------------------
# Development Environment Segments
#---------------------------------------

POWERLEVEL9K_VCS_GIT_ICON="\ue702"
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON="\uf171"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf09b "
POWERLEVEL9K_VCS_GIT_GITLAB_ICON="\uf296"

#POWERLEVEL9K_VCS_HG_ICON=""
#POWERLEVEL9K_VCS_SVN_ICON=""

POWERLEVEL9K_VCS_BOOKMARK_ICON="\uf461 "
POWERLEVEL9K_VCS_BRANCH_ICON="\ue0a0 "
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417 "
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON="\u2193 "
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON="\u2191 "
POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON="\ue725 "
#POWERLEVEL9K_VCS_STAGED_ICON=""
#POWERLEVEL9K_VCS_STASH_ICON=""
POWERLEVEL9K_VCS_TAG_ICON="\uf02b "
POWERLEVEL9K_VCS_UNSTAGED_ICON="\u00b1 "
POWERLEVEL9K_VCS_UNTRACKED_ICON="\u25CF "

#---------------------------------------
# Javascript / Node.js Segments
#---------------------------------------

POWERLEVEL9K_NODE_ICON="\ue718 "

#---------------------------------------
# PHP Segments
#---------------------------------------

# *****  symfony_tests  *****
#POWERLEVEL9K_SYMFONY_ICON=""
#POWERLEVEL9K_TEST_ICON=""									# this icon is used for both symfony2_test and rspec_stats

#---------------------------------------
# Python Segments
#---------------------------------------

POWERLEVEL9K_PYTHON_ICON="\ue73c"

#---------------------------------------
# Ruby Segments
#---------------------------------------

#POWERLEVEL9K_RUBY_ICON=""

# *****  rspec_stats  *****
#POWERLEVEL9K_TEST_ICON=""									# this icon is used for both symfony2_test and rspec_stats

#---------------------------------------
# Rust Segments
#---------------------------------------

#POWERLEVEL9K_RUST_ICON=""

#---------------------------------------
# Swift Segments
#---------------------------------------

#POWERLEVEL9K_SWIFT_ICON=""

#---------------------------------------
# AWS Segments
#---------------------------------------

# *****  aws  *****
POWERLEVEL9K_AWS_ICON="\uf270"
#POWERLEVEL9K_AWS_EB_ICON=""

#---------------------------------------
# Docker Segments
#---------------------------------------

# *****  docker_machine  *****
POWERLEVEL9K_SERVER_ICON="\uf308"

#---------------------------------------
# OTHER SEGMENTS
#---------------------------------------

# *****  execution_time  *****
POWERLEVEL9K_EXECUTION_TIME_ICON="\ufa1e"

#=======================================
# PROMPT CUSTOMIZATION
#=======================================
# Choose which segments to display in your prompt

# Segment list for left prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_wifi_signal battery ssh root_indicator dir dir_writable vcs aws pyenv virtualenv docker_machine)
# Segment list for right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(  status command_execution_time time)

# You can also use different prompts in different environments, e.g. for TMUX, you might use
#if [[ "${TERM}" =~ "tmux" || "${TERM}" =~ "screen" ]]; then
#	# Segment list for left prompt
#	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo)
#else
#	# Segment list for left prompt
#	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir_writable dir background_jobs command_execution_time vi_mode)
#	# Segment list for right prompt
#	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs rbenv todo date time battery)
#fi

#=======================================
# LOADING POWERLEVEL9K
#=======================================

# Option 1: Install for Vanilla ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
#source $HOME/powerlevel9k/powerlevel9k.zsh-theme

# Option 2: Install for Oh-My-ZSH
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Option 3: Install for Prezto
# $ git clone https://github.com/bhilburn/powerlevel9k.git  ~/.zprezto/modules/prompt/external/powerlevel9k
# $ ln -s ~/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme ~/.zprezto/modules/prompt/functions/prompt_powerlevel9k_setup
# Add to ~/.zpreztorc :
# zstyle ':prezto:module:prompt' theme 'powerlevel9k'

# Option 4: Install for antigen
#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen apply

# Option 5: Install for Zplug
# $ zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Option 6: Install for Zgen
#zgen load bhilburn/powerlevel9k powerlevel9k

# Option 7: Install for Antibody
#antibody bundle bhilburn/powerlevel9k

# Option 8: Install for ZPM
#Plug bhilburn/powerlevel9k
#source ~/.local/share/zpm/plugins/powerlevel9k/powerlevel9k.zsh-theme

# Option 9: Install for ZIM
# $ git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
# $ ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_powerlevel9k_setup
# Add to ~/.zimrc
# zprompt_theme='powerlevel9k'
