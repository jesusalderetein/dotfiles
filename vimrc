" Source plugins
source ~/.vim/plugins.vim

set nocompatible              " be iMproved, required
filetype off                  " required

autocmd BufEnter * silent! lcd %:p:h

"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Solarized Theme
"syntax on
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized

" Monokai Theme
syntax enable
colorscheme monokai
let g:molokai_original = 1
let g:rehash256 = 1

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermfg=231 ctermbg=241
endif

" set up some custom colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=244
highlight CursorLine   ctermbg=236

" session manage defaults
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:ag_working_path_mode="r"
let g:showmarks_enable=0

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set clipboard=unnamed             " use the system clipboard
set ruler                         " show row and column in footer
" set relativenumber                " show relative line numbers
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set ignorecase                    " ignore case in search
set backspace=2                   " make backspace work like most other apps
set backspace=indent,eol,start
set list listchars=tab:>-,trail:.,precedes:<,extends:>
" set shell=/bin/sh
" set exrc
" set secure
set re=1
set number "Enable line numbers"
set expandtab
set sw=2
set ts=2
set softtabstop=2
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=100
endif

" Leader
" set leader key to comma
let mapleader = ","

" helptags $VIMRUNTIME/doc

"
" MAPS: custom keys
noremap <leader>d dd
nnoremap <leader>g <C-]>
nnoremap <c-z> <nop>
nnoremap <leader>f :Ag!<space>
nnoremap <leader>q <Esc>:q<CR>
inoremap <C-e> <Esc>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap <silent> <C-m> :res<CR>:vertical res<CR>
nnoremap <silent> <C-n> <C-w>=
nnoremap gl $
nnoremap gh ^
map <leader>s :,$s/

" Disables
map <S-k> <Nop>
map Q <Nop>

" Copy to clipboard
map <S-Y> "+yy
