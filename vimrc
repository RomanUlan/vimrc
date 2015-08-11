"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"!!!!!                                                   !!!!!!!
"!!!!! @Author:	Roman Ulan                               !!!!!!!
"!!!!! @Date:	11.10.2013                               !!!!!!!
"!!!!! @Mail:	Roman.Ulan@gmail.com                     !!!!!!!
"!!!!! This config requires few plugins:                 !!!!!!! 
"!!!!!   NERDTree, Tagbar, Bufexplorer, Mark,            !!!!!!!
"!!!!!   SnipMate, vim-airline, powerline-fonts          !!!!!!!
"!!!!!                                                   !!!!!!!
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

source $VIMRUNTIME/mswin.vim

colorscheme desert

syntax on

set nu "show line numbers
set nowrap "no lines wrapping
set autochdir "change dir to path of current buffer

"search configuration
set ignorecase "case insensitive search
set hlsearch "highlight search
set incsearch "interactive search

"highlight whitespace errors in c and java mode
let c_space_errors = 1
let java_space_errors = 1

"auto identation
set cin
set autoindent
set smartindent
set tabstop=4 "tab size
set shiftwidth=4 "autoindent indent size

"folding settings
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=99
set foldlevel=99
"set nofoldenable

"diff settings
set diffopt=filler
set diffopt+=vertical

"highlighc current line and column
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>l :set cursorline!<CR>
:nnoremap <Leader>c :set cursorcolumn!<CR>

"Tagbar plugin configuration
filetype on
filetype plugin on

"vim-airline
set laststatus=2 "turns on vim-arirline at startup
if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
endif
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 "tabline enable
let g:airline#extensions#tabline#fnamemod = ':t' "only file names in tabs

"key mapping
map <TAB> <C-w><C-w>
map <S-TAB> <C-w><C-h>
map <F3> :NERDTreeToggle <CR>
map <F4> :TagbarToggle<CR>
map <F5> :bprev <CR>
map <F6> :bnext <CR>

noremap <C-F> :promptfind <CR>
inoremap <C-F> <ESC>:promptfind <CR>
noremap <C-R> :promptrepl <CR>
inoremap <C-R> <ESC>:promptrepl <CR>

