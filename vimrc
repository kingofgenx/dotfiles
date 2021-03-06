set encoding=utf-8
set nocompatible
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set foldmethod=indent
set foldlevel=99
set cursorline
set cursorcolumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set mouse=a
set scrolloff=4
set number
set splitright
set splitbelow
set list listchars=tab:▸\ ,trail:.
set hlsearch
set colorcolumn=80
set noswapfile
set clipboard=unnamed
set modelines=0
set nomodeline

" autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
" autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE

" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_theme='one'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

syntax on


"filetype off
filetype plugin on

" Save as root
ca w!! w !sudo tee "%"

:inoremap jk <Esc>

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add all plugins here
" SimpylFold
Plugin 'tmhedberg/SimpylFold'
" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'
" Vim-Airline
Plugin 'bling/vim-airline'
" Python and other languages code checker
Plugin 'scrooloose/syntastic'
" Paint css color with the real color
Plugin 'lilydjwg/colorizer'
" NerdTree
Plugin 'scrooloose/nerdtree' 
" TagBar 
 Plugin 'majutsushi/tagbar' 
 " Vim-One
Plugin 'rakr/vim-one'
" Vimwiki
Plugin 'vimwiki/vimwiki'
" vim-fugitive
Plugin 'tpope/vim-fugitive'
" vim-obsession
Plugin 'tpope/vim-obsession'
" NerdCommenter
Plugin 'scrooloose/nerdcommenter'
" tmux-navigator
Bundle 'christoomey/vim-tmux-navigator'
"end plugin list
call vundle#end()

filetype plugin indent on

au BufNewFile,BufRead *.py
 \ set tabstop=2 | 
 \ set softtabstop=2 | 
 \ set shiftwidth=2 |
 \ set textwidth=79 |
 \ set expandtab |
 \ set autoindent | 
 \ set fileformat=unix

au BufNewFile,BufRead *.ejs set filetype=javascript

au BufNewFile,BufRead *.js,*.html,*.css
 \ set tabstop=2 | 
 \ set softtabstop=2 | 
 \ set shiftwidth=2

au BufNewFile,BufRead *.php,*.phps
 \ set tabstop=4 |
 \ set shiftwidth=4 | 
 \ set expandtab | 
 \ set showmatch

au BufNewFile,BufRead *.yml
 \ set tabstop=2 |
 \ set shiftwidth=2 | 

" Lets Learn to Navigate - Arrow Keys Map to NOOPS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Lets Navigate Windows with Standard Movements
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

noremap <space> za
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

map <M-F10> :!ruby -r xmp -n -e 'xmp($_, "\%l\t\t\# \%r\n")'<CR>
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

colorscheme one
set background=dark
let g:one_allow_italics = 1

if has('nvim')
  let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif
