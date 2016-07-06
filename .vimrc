set nocompatible              " be iMproved, be safe
" http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless

" install vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" ## BINDINGS ##
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" ## INTERFACE ##
" Pseudo-command-line (experimental)
Plug 'junegunn/vim-pseudocl'
" Go to Terminal or File manager (maybe not so useful)
" Plug 'justinmk/vim-gtfo'


" ## FIXES ##
" Find-N-Replace helper free of regular expressions
Plug 'junegunn/vim-fnr'
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" Heuristically set buffer options (auto indentation)
Plug 'tpope/vim-sleuth'

" ## VISUAL ##
" one colorscheme pack to rule them all!
Plug 'flazz/vim-colorschemes'
" Vim plugin that displays tags in a window, ordered by scope
" Lean & mean status/tabline for vim that's light as air.
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" should be loaded before vim-airline but does not work :(
Plug 'vim-airline/vim-airline'
" Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify' " possible alternative
" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Preview colours in source code while editing
Plug 'ap/vim-css-color'
" causes all trailing whitespace characters (spaces and tabs) to be highlighted
Plug 'ntpeters/vim-better-whitespace'
" A Vim plugin for visually displaying indent levels in code: <leader>ig
Plug 'nathanaelkane/vim-indent-guides'
" A git commit browser
Plug 'junegunn/gv.vim'
" The ultimate undo history visualizer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers.
Plug 'junegunn/vim-peekaboo'
" Rainbow parentheses!
Plug 'junegunn/rainbow_parentheses.vim'
" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'
" Hyperfocus-writing in Vim
Plug 'junegunn/limelight.vim'

" ## COMPLETION ##
" allows you to use <Tab> for all your insert completion needs
Plug 'ervandew/supertab'
" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'
" Emoji in Vim
Plug 'junegunn/vim-emoji'

" ## LANGUAGE SUPPORT ##
" syntax checking
Plug 'scrooloose/syntastic'
" plug-in which provides support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim'
" Generate JSDoc to your JavaScript code
Plug 'heavenshell/vim-jsdoc'
" Go development plugin for Vim
Plug 'fatih/vim-go'
" tern is a JavaScript code analyzer for deep, cross-editor language support
Plug 'ternjs/tern_for_vim'
" Enhanced javascript syntax file for Vim
Plug 'jelera/vim-javascript-syntax'
" Vastly improved Javascript indentation and syntax support in Vim
Plug 'pangloss/vim-javascript'
" A code-completion engine for Vim
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
" Compiling requires too much memory, fails every time
" A modern vim plugin for editing LaTeX files
Plug 'lervag/vimtex'

" ## MOTIONS ##
" search and jump to a single character with <leader><leader>s<char>
Plug 'easymotion/vim-easymotion'

" ## SELECTION ##
" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" ## SHORTCUTS ##
" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-speeddating'
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'
" A Vim alignment plugin
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'

" ## FUZZY FINDER ##
" A command-line fuzzy finder written in Go
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" bundle of fzf-based commands and mappings
Plug 'junegunn/fzf.vim'

call plug#end()

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Centralize backups, swapfiles and undo history (// for full paths)
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
if has("persistent_undo")
    set undodir=~/.vim/undo//
    set undofile
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Make tabs as wide as four spaces
set tabstop=4
set shiftwidth=4
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Automatically cut long lines
set tw=79
" Adds a guide for maximum length of lines
set colorcolumn=79
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setlocal filetype=json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
  " Treat .sage files as .py
  autocmd BufNewFile,BufRead *.sage setlocal filetype=python syntax=python softtabstop=4 shiftwidth=4 expandtab
endif

set showcmd

" Set colors
set t_Co=256
syntax on
set background=dark
" Use Hybrid, to use ~/.Xresources uncomment next line
" let g:hybrid_use_Xresources = 1
silent! colorscheme hybrid
"silent! colorscheme seoul256


" Replace search with easymotion multi char search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" open a new tab
noremap <leader>t <Esc>:tabnew<CR>

" Strip trailing whitespace (,ss)
noremap <leader>ss :StripWhitespace<CR>
autocmd FileType javascript,python,c,cpp,java,html,css,ruby autocmd BufWritePre <buffer> StripWhitespace

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" <cr> expands {_} to {<cr><indent>_<cr>}
let g:delimitMate_expand_cr = 1

" Experimentally integrate YouCompleteMe with vim-multiple-cursors, otherwise
" the numerous Cursor events cause great slowness
" (https://github.com/kristijanhusak/vim-multiple-cursors/issues/4)

" function! Multiple_cursors_before()
" let s:old_ycm_whitelist = g:ycm_filetype_whitelist
" let g:ycm_filetype_whitelist = {}
" endfunction
" function! Multiple_cursors_after()
" let g:ycm_filetype_whitelist = s:old_ycm_whitelist
" endfunction

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" clean up gvim interface
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  set lines=60 columns=108 linespace=0
  set guifont=Liberation\ Mono\ for\ Powerline\ 12
endif

" goyo + limelight config
let g:goyo_width=90
nmap <silent> <c-m> :Goyo<cr>:Limelight!!0.7<cr>

" map c-p to fzf
nn <c-p> :FZF<cr>

" undotree config
let g:undotree_WindowLayout = 2
nnoremap <silent> U :UndotreeToggle<cr>

" search for last function def and call jsdoc
nmap <silent> <c-l> ?function<cr>:noh<cr><Plug>(jsdoc)
