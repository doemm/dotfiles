#!/bin/bash

# setup for neovim config
export TMUX="$HOME/.tmux"
if [ ! -d "$TMUX" ]; then
  mkdir -p $HOME/.tmux/plugins && \
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

# symlink vim config file to home
ln -sfn $HOME/dotfiles/tmux/tmux.conf $HOME/.tmux.conf
