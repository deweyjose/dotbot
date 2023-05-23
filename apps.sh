#!/usr/bin/env bash


if ! which brew > /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi;


echo "Install and update apps via Homebrew..."

brew update

brew upgrade

brew bundle

if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
  echo "Installing Plugged..."
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi;

brew cleanup
