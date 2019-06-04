# DOTFILES (Work in progress)
Dotfiles to work with tmux, zsh and vim.

### VIM
Vim for text and code editor. Using [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager.

#### Symbolic links
After clone the dotfiles repository in your profile folder create the symbolic links

```sh
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```


### CTAGS
[https://github.com/szw/vim-tags](https://github.com/szw/vim-tags)

#### Install dependencies
- Ubuntu: `apt-get install exuberant-ctags`
- MacOSX: `brew install ctags`

#### Generate ctags
- Into project run this command:
`ctags -R .`

## Install Silver search
- Ubuntu: `apt-get install silversearcher-ag`
- MacOSX:  `brew install the_silver_searcher`

## Install ranger (requires python)
- Ubuntu: `apt-get install ranger`
- MacOSX:  `brew install ranger`

## Issues
### To resolv "Sorry, no help for help.txt"
```vim
:helptags $VIMRUNTIME/doc
```


Un saludo a mis amigos de Bancard