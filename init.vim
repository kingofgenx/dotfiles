"~/.config/nvim/init.vim
set runtimepath+=~/.vim
set packpath+=~/.vim
source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow terminal buffer size to be very large
let g:terminal_scrollback_buffer_size = 100000

" use true colors in terminal
set termguicolors

" always start in insert mode when entering a :terminal buffer
autocmd BufWinEnter,WinEnter term://* startinsert

" exit insert mode in :terminal with 'jk'
tnoremap jk <C-\><C-n>

" Terminal mode fancy window movements
tnoremap <C-h> <c-\><c-n><c-w>h
tnoremap <C-j> <c-\><c-n><c-w>j
tnoremap <C-k> <c-\><c-n><c-w>k
tnoremap <C-l> <c-\><c-n><c-w>l
