call plug#begin('~/.nvim/plugged')
	Plug 'chriskempson/base16-vim'
	Plug 'gibiansky/vim-latex-objects', { 'for': 'tex' }
	Plug 'tpope/vim-surround'
	Plug 'sirver/UltiSnips' | Plug 'honza/vim-snippets'
  Plug 'vim-pandoc/vim-pandoc', { 'for': 'markdown' }
  Plug 'vim-pandoc/vim-pandoc-syntax' 
  Plug 'vim-pandoc/vim-pandoc-after' 
  Plug 'fmoralesc/vim-pad' 
call plug#end()

let base16colorspace=256
colorscheme base16-ocean
set background=dark

" KEYBINDINGS:

map <space> <leader>

" Navigation
inoremap jk <esc>
vnoremap <c-j><c-k> <esc>
tnoremap jk <c-\><c-n>

nnoremap <leader>erc :vsp ~/.nvimrc <cr>
nnoremap <leader>src :source ~/.nvimrc <cr>
" Buffer settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftround

set number
set scrolloff=7

let g:tex_flavor = 'latex'
" Filespecific autocommands

augroup latex
	autocmd!
	autocmd FileType tex :iabbrev $$ \( \)
  autocmd FileType tex :nnoremap <leader>ll :!grep -l '\\documentclass' *tex \| xargs latexmk -pdf --shell-escape <CR>
  autocmd FileType tex :nnoremap <leader>lv :silent execute '!zathura %:r.pdf &'
augroup END

" PLUGIN SETTINGS:

let g:pad#dir = "~/notes"
let g:pad#local_dir = "notes"
let g:pad#default_format = "pandoc"
