### Symbolic links
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/tmux ~/.tmux
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/gitignore ~/.gitignore
ln -sf ~/dotfiles/gvimrc ~/.gvimrc
ln -sf ~/dotfiles/gemrc ~/.gemrc

### Install git submodules
git submodule update --init --recursive

### Open vim and execute the PlugInstall
echo "Please ignore the warnings and hit ENTER"
vim +PlugInstall +qa

