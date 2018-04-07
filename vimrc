" ~/.vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" For UTF8
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8

" Colors!
syntax enable
set background=dark
colorscheme solarized
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'

" Show line number, ruler
set number
set ruler
set cursorline

" Indent
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Behavier BS
set backspace=indent,eol,start

" Search
set ignorecase
set smartcase
set incsearch
set wrapscan

" Free cursor
set whichwrap=b,s,h,l,<,>,[,]

" Status line
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'.fugitive#statusline()}%=%l,%c%v%8p

" Misc.
set nocompatible
set showmatch
set showcmd
set showmode
set nobackup
set autoread
set hidden
set scrolloff=10
set wildmenu
set shortmess+=I

" OmniComplete
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType="context"

" fold
" let perl_fold=1
" let perl_fold_blocks=1

" tab indenting
set list lcs=tab:\┆\ 
let g:indentLine_color_term = 239

" NERDtree
map <C-n> :NERDTreeToggle<CR>

" Tabs
noremap <C-t> :tabnew<CR>
noremap <C-w> :tabclose<CR>
noremap <C-Right> :tabnext<CR>
noremap <C-Left> :tabprev<CR>

let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_aggregate_errors=1
let g:syntastic_id_checkers=1
highlight SyntasticErrorLine guibg=#6D6968 
highlight SyntasticWarningLine guibg=#6D6968 
" Sytanstic Error Signs"
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="E>"
let g:syntastic_warning_symbol="W>"


" ### LANGUAGES ###

" # Perl #
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

" # Python #
let g:syntastic_python_checkers=['python', 'pyflakes']

