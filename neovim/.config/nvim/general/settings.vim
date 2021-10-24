" General
syntax enable                           " Enables syntax highlighing
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set mouse=a                             " Enable your mouse
set clipboard=unnamedplus               " Copy paste between vim and everything else

" Tabs and buffers
set hidden                              " Required to keep multiple buffers open multiple buffers
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" Indentation
set tabstop=4 softtabstop=4       	    " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

" Visual
set nowrap                              " Display long lines as just one line
set ruler              			        " Show the cursor position all the time
set laststatus=0                        " Always display the status line
set termguicolors                       " Enables 24-bit RGB color
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore

" Searching
set incsearch                           " Incremental searching
set ignorecase                          " Ignore cases while searching
set smartcase                           " Override the 'ignorecase' option if the search pattern contains upper


" Backup & swap files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile
set undodir=~/.config/nvim/undodir      " Set the undo directory
set undofile                            " Undo history per file

" Timings
set updatetime=50                       " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
