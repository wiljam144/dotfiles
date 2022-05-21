map j gj
map k gk
map // :nohlsearch<CR>
let g:mapleader="\<Space>"
let g:maplocalleader = ','

nnoremap <silent> <A-e> :NvimTreeToggle<CR>

nnoremap <silent> <A-`> :ToggleTerm<CR>

nnoremap <silent> <A-,> :BufferPrevious<CR>
nnoremap <silent> <A-.> :BufferNext<CR>
nnoremap <silent> <A-<> :BufferMovePrevious<CR>
nnoremap <silent> <A->> :BufferMoveNext<CR>
nnoremap <silent> <A-s> :BufferPick<CR>
nnoremap <silent> <A-c> :BufferClose<CR>

nnoremap <silent> <A-m> :lua require("nabla").popup({border = "rounded"})<CR>
