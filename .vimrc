set number
set rnu
set hlsearch
set showcmd
set cmdheight=2
set showmatch
set mouse=a
set termguicolors
set timeoutlen=400

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

let mapleader=' '

noremap jk <Esc>:w<CR>
inoremap jk <Esc>

nnoremap <Leader>d "_d
nnoremap Y y$

nnoremap ; :
nnoremap : ;

map <C-j> <C-f>
map <C-k> <C-b>
map zj <C-d>
map zk <C-u>

map <C-h> <C-w>h
map gj <C-w>j
map gk <C-w>k
map <C-l> <C-w>l

" New line insertion
noremap gi o<Esc>k
noremap go O<Esc>j
noremap gl i<CR><Esc>

call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'easymotion/vim-easymotion'
	Plug 'vim-airline/vim-airline'
	Plug 'arzg/vim-colors-xcode'
	Plug 'terryma/vim-smooth-scroll'

call plug#end() " :PlugInstall to install new plugins

" easymotion configs
map f <Plug>(easymotion-bd-f)
map t <Plug>(easymotion-bd-t)

map w <Plug>(easymotion-bd-w)
map e <Plug>(easymotion-bd-e)

map W <Plug>(easymotion-bd-W)
map E <Plug>(easymotion-bd-E)

map <Leader>s <Plug>(easymotion-jumptoanywhere)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" EasyMotion default trigger is <L><L>.

" vim-xcode-color configs
" colorscheme xcodelight
colorscheme xcodedark
let g:xcodedark_green_comments = 1

augroup vim-colors-xcode
autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 1)<CR>

