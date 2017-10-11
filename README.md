# DOTFILES (In progress)

# VIM
## SETUP
### Symbolic links
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

### Install Vundle at first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# CTAGS
https://github.com/szw/vim-tags

## Install dependencies
sudo apt-get install exuberant-ctags
brew install ctags

## To generate ctags
### Into project run this command
ctags -R .

## To resolv "Sorry, no help for help.txt"
:helptags $VIMRUNTIME/doc


## Add this to .bashrc on linux
vi ~/.bashrc
alias tmux="TERM=screen-256color-bce tmux"
source ~/.bashrc

## Install Silver search
brew install the_silver_searcher
apt-get install silversearcher-ag
yum install the_silver_searcher



# TMUX cheat sheet

## Sessions
### In opened session press
ctrl+j d  (detach)

### Attach session
$ tmux attach -t session_name

### Switch between sessions
ctrl+j s
