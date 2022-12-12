#!/bin/bash

# install nvm and node for lsp
export NVM="$HOME/.nvm"
if [ ! -d "$NVM" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
  source $NVM/nvm.sh && nvm install node
fi

# symlink vim config file to home
ln -sfn $HOME/dotfiles/vim/vimrc $HOME/.vimrc

# setup for neovim config
mkdir -p $HOME/.config/nvim && \
ln -sfn $HOME/dotfiles/vim/init.vim $HOME/.config/nvim/init.vim
