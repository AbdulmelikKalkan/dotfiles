#!/bin/bash

#You should install vim and zsh for using these configs

set -xeou pipefail
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for f in .zshrc \
	.vimrc \
	.gitconfig \
	.gitignore_global \
	.kubectl_aliases; do
	if [ -e "$HOME/$f" ]; then rm "$HOME/$f"; fi
	ln -sf "$SCRIPT_DIR/$f" "$HOME/$f"
done

for f in zsh_aliases.inc \
  zsh_functions.inc; do
  if [ -e "$HOME/.oh-my-zsh/$f" ]; then rm "$HOME/.oh-my-zsh/$f"; fi
  ln -sf "$SCRIPT_DIR/$f" "$HOME/.oh-my-zsh/$f"
done

# install vundle for vim plugins
if [ -e "/home/$USER/.vim/bundle/Vundle.vim" ]; then rm -f "/home/$USER/.vim/bundle/Vundle.vim"; fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
