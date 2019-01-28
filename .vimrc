"**********************************************
"" vim-plug
"**********************************************

call plug#begin()

"" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

"" gc to comment line
Plug 'tpope/vim-commentary'

"" Mark in whitespaces
Plug 'bronson/vim-trailing-whitespace'

"" Auto close parenthesis, quotes, brackets, etc.
Plug 'Raimondi/delimitMate'

Plug 'majutsushi/tagbar'

"" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"" Dracula Theme
Plug 'dracula/vim', { 'as': 'dracula' }

"" Golang Bundle
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"" Lua Bundle
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'

"" Ruby Bundle
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

"" Light line
Plug 'itchyny/lightline.vim'

call plug#end()

"" Theme
syntax on
color dracula

"" NERDTree configuration
nnoremap <silent> b :NERDTreeToggle<CR>

""Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W  w
cnoreabbrev Q  q

"" Tagbar
nmap t :TagbarToggle<CR>
let g:tagbar_autoclose=1

"" Map
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

"" Vim configuration
set number
set hlsearch
set autoindent
set tabstop=4
set softtabstop=0
set mouse=a
set cursorline

"" Light line configuration
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ 'active': {
	\	 'left': [ [ 'mode', 'paste' ],
	\			   [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\ 	'gitbranch': 'fugitive#head'
	\ }
	\ }
