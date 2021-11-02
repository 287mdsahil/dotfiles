" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin('~/.config/nvim/plugged')

    " icon support
    Plug 'kyazdani42/nvim-web-devicons'

    " File explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " Themes
    Plug 'morhetz/gruvbox'

    " Lsp support
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'


call plug#end()


source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/nvim-lspconfig.vim

