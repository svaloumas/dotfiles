set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

" My Plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/vim-goimports'
Plugin 'fatih/vim-go'
Plugin 'morhetz/gruvbox'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'sickill/vim-monokai'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rust-lang/rust.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'flazz/vim-colorschemes'

" Bundle 'christoomey/vim-titlecase'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set numeric format to decimal only
set nrformats=

" load gitgutters changes faster
set updatetime=100
" show existing tab with 4 spaces width
" when indenting with '>', use 4 spaces width
" On pressing tab, insert 4 spaces
set softtabstop=4 shiftwidth=4 expandtab

set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Tabs
ca tn tabnew
ca th tabp
ca tl tabn

" Optionally reset the cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" extend vim's history
set history=100

" ctags dir
set tags+=$HOME/projects/

" set encoding
set encoding=UTF-8

" set mapleader
let mapleader = " "

" set highlight search on
set hlsearch

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" vim-go highlight settings

let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_operators = 1

" run go-imports on save
let g:go_fmt_command = "goimports"

" go info to view function signatures
let g:go_info_mode='gopls'
let g:go_def_mode='gopls'
" enable auto type info
let g:go_auto_type_info = 1

" rustfmt on save
let g:rustfmt_autosave = 1

" set spellchecking on
set spell spelllang=en_us

" check spelling mappings

" fast fix something
nnoremap <leader>s :set spell!

" map highlight off
nnoremap <C-N> :nohlsearch<CR>

" Execute Python programs with F9 and Go programs with F10
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <buffer> <F10> :exec '!go run' shellescape(@%, 1)<cr>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za

" nmap <leader>gc <Plug>Titlecase
" vmap <leader>gc <Plug>Titlecase
" nmap <leader>gC <Plug>TitlecaseLine

" wildmenu tab settings
set wildmenu
set wildmode=full

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

" show relative numbers
set relativenumber

" Turn on line numbers on the side of the screen
set nu
set clipboard=unnamed
set laststatus=2
set t_Co=256

" airline font settings
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" dev icons settings
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline’s tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline’s statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Make the background transparent
hi Normal guibg=NONE ctermbg=NONE

if has('termguicolors')
  set termguicolors
endif

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
