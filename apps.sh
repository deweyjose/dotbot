#!/usr/bin/env bash


if ! which brew > /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi;


echo "Install and update apps via Homebrew..."

brew update

brew upgrade

brew bundle

brew update

if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  echo "Installing Packer..."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi;

if [ ! -d "$HOME/.cargo" ]; then
  echo "Installing Rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi;


