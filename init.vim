set nocompatible            " disable compatibility to old-time vi 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim

" Set the default font size
set guifont=Hack:h12

call plug#begin("~/.config/nvim/autoload")
	" Plug 'tomasiser/vim-code-dark'
	Plug 'dracula/vim', { 'as': 'dracula' }	
	Plug 'SirVer/ultisnips'
	Plug 'preservim/nerdcommenter'
	Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
	Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'}
	Plug 'mhinz/vim-startify' " cool start menu
	Plug 'beyondmarc/glsl.vim' " glsl syntax highlighting
	Plug 'zhamlin/tiler.vim'	
	Plug 'jackguo380/vim-lsp-cxx-highlight'
	Plug 'pacha/vem-tabline'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

" Vem tabline config
let g:vem_tabline_show = 2

" VSCode theme
" let g:codedark_conservative = 0
" Set up the syntax colors and theme
if(has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme dracula


" Remap window switching keys to something more convenient
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Map F to focus a window
map <C-F> :TilerFocus<CR>

" map the F2 key to open the NERD file explorer
map <F2> :NERDTreeToggle<CR>

" Set the default glsl version
let g:glsl_default_version = 'glsl430'

" Configure the startify start menu
let g:startify_lists = [
	\ { 'header' : ['   MRU'], 'type' : 'files' }
  \ ]
let g:startify_fortune_use_unicode = 1

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=UTF-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Taboo
" set guioptions-=e

map <C-T> :tabnew<CR>
map <C-W> :bd<CR>
map <C-A> :bprev<CR>
map <C-D> :bnext<CR>

" CTRL + S to save file
map <C-S> :w<CR>

" Vem Tabline color scheme
highlight VemTablineNormal           term=reverse cterm=none guifg=#FFFFFF guibg=#242424 gui=none
highlight VemTablineNumber           term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineSelected         term=bold    cterm=bold guifg=#242424 guibg=#FFFFFF gui=bold
highlight VemTablineLocationSelected term=bold    cterm=none guifg=#242424 guibg=#FFFFFF gui=bold
highlight VemTablineNumberSelected   term=bold    cterm=none guifg=#242424 guibg=#FFFFFF gui=bold
highlight VemTablineShown            term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineLocationShown    term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineNumberShown      term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineSeparator        term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablinePartialName      term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineTabNormal        term=reverse cterm=none guifg=#FFFFFF guibg=#555555 gui=none
highlight VemTablineTabSelected      term=bold    cterm=bold guifg=#242424 guibg=#FFFFFF gui=bold
