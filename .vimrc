"**********************************************
"" vim-plug
"**********************************************

call plug#begin()

"" ale linters
Plug 'dense-analysis/ale'

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_ruby_rubocop_executable = 'bundle'

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

let g:go_fmt_command = "goimports"
let g:go_addtags_transform = "snakecase"
let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

"" Lua Bundle
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'

"" Ruby Bundle
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

"" Light line
Plug 'itchyny/lightline.vim'

"" Latex
Plug 'vim-latex/vim-latex'

""Ctrlp
Plug 'ctrlpvim/ctrlp.vim'

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
nnoremap <S-Tab> gT
nnoremap <Tab> gt

"" Vim configuration
set number
set hlsearch
set autoindent
set tabstop=2 shiftwidth=2 expandtab
set softtabstop=0
set cursorline

if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

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
