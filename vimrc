execute pathogen#infect()
syntax on
filetype plugin indent on


" manage numbers
set nu
function! NumberToggle()
	if(&rnu == 1)
		set nornu
	else
		set rnu
	endif
endfunc

nnoremap <C-l> :call NumberToggle()<cr>


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
