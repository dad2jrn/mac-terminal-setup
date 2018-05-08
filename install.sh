#!/usr/bin/env bash

# Check if Homebrew is installed
if ! type "brew" > /dev/null; then
  # install foobar here
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

