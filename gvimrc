set guifont=Monospace\ 8

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

nmap <C-m> :if &go=~#'m'<Bar>set go-=mT<Bar>else<Bar>set go+=mT<Bar>endif<CR>


" GUI is running or is about to start.
" Maximize gvim window (for an alternative on Windows, see simalt below).
set lines=999 columns=999
