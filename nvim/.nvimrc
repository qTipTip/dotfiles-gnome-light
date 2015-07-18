call plug#begin('~/.nvim/plugged')
	Plug 'chriskempson/base16-vim'
	Plug 'ajh17/spacegray.vim'
	Plug 'baeuml/summerfruit256.vim'
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

" Visual aids
set number
