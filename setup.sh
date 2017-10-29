### Symbolic links
unlink ~/.vimrc
unlink ~/.vim
unlink ~/.tmux.conf
unlink ~/.zshrc
unlink ~/.gitconfig
unlink ~/.gitignore

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore

### Install Vundle at first
rm -rf ~/dotfiles/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### Open vim and execute the Vundle
vim -c "PluginInstall"
