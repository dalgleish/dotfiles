#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install node.js
./node.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlinks
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.curlrc $HOME/.curlrc
ln -s $HOME/.dotfiles/.inputrc $HOME/.inputrc
ln -s $HOME/.dotfiles/.wgetrc $HOME/.wgetrc
ln -s $HOME/.dotfiles/.editorconfig $HOME/.editorconfig
ln -s $HOME/.dotfiles/.ssh/config $HOME/.ssh/config

# Copy files
cp .gitconfig ~/

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
