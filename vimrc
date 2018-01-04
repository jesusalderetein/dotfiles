execute pathogen#infect()
syntax on
filetype plugin indent on

" toggle relative number
set number
function! NumberToggle()
  if(&rnu == 1)
    set nornu
  else
    set rnu
  endif
endfunc

nnoremap <C-l> :call NumberToggle()<cr>

set clipboard=unnamed             " use the system clipboard
set backspace=2                   " make backspace work like most other apps
set backspace=indent,eol,start
set list listchars=tab:>-,trail:.,precedes:<,extends:>
set expandtab
set sw=2
set ts=2
set softtabstop=2
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim sessions
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:ag_working_path_mode="r"
let g:showmarks_enable=0

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=100
  highlight ColorColumn ctermbg=gray
endif

" custom keys
nnoremap <leader>f :Ag!<space>
nnoremap <leader>q <Esc>:q<CR>
nnoremap <silent> <C-m> :res<CR>:vertical res<CR>
nnoremap <silent> <C-n> <C-w>=
map <leader>r :,$s/

" disables
nnoremap <c-z> <nop>
map <S-k> <Nop>
map Q <Nop>

" copy to clipboard
map <S-Y> "+yy

" ranger
:command Tex RangerTab
:command Ex RangerEdit
