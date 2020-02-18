
set number
syntax on

" Start of plugin manager
call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/nerdtree'
	Plug 'flazz/vim-colorschemes'	
	Plug 'scrooloose/syntastic'
	Plug 'valloric/youcompleteme'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()
" End of plugin manager

" ycm compilation database
let g:ycm_global_ycm_extra_conf = '/home/sahil/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
" Set color scheme
colorscheme native

" Map nerd tree to ctrl+n
map <C-n> :NERDTree

" Configuration for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Changing the update time (default is 4000 i.e. 4s)
" set updatetime=100

" mouse
set mouse=a

" tab
"set shiftwidth=0
"set tabstop=4

let g:livepreview_previewer = 'zathura'
