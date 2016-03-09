set nu
set nocompatible
set noexpandtab
autocmd FileType javascript set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set cindent
set smartindent
set smarttab
set cindent
set guioptions -=m
set guioptions -=T
set t_Co=256
syntax on
syntax sync minlines=256
set wildmenu
set wildmode=list:longest,full

set incsearch
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

let mapleader=","

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
nmap <space> zz

"nnoremap <leader>nt :NERDTreeToggle<cr>
"nmap <F7> :NERDTreeToggle<cr>
"Always hit F1 accidentally... >_>
nmap <F1> <esc>

"Clear highlight on escape
"nnoremap <esc> :noh<return><esc>

set nocompatible
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set noshowmode
set iskeyword-=_
let g:neocomplete_enable_at_startup = 1

filetype plugin indent on
"" allow plugins by file type
filetype on
filetype plugin on
filetype indent on

"*****************************************************************************
"" NeoBundle core
"*****************************************************************************
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let vundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

if !filereadable(vundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"*****************************************************************************
"" NeoBundle install packages
"*****************************************************************************
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'

"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'gaffneyc/vim-cdargs'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-surround'
NeoBundle 'ervandew/supertab'
NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'wincent/command-t'
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/CSApprox'
NeoBundle 'vim-scripts/dbext.vim'

"" Supertabs, needed for ultisnips
NeoBundle 'ervandew/supertab'

" Vim stuff.
NeoBundle '4Evergreen4/vim-hardy'

"" Snippets
"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'

"Shougos world of awesome
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

"" Color
NeoBundle 'tomasr/molokai'

NeoBundle 'ryanoasis/vim-devicons'

"" Custom bundles

"" Ruby Bundle
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
NeoBundle "thoughtbot/vim-rspec"
NeoBundle "majutsushi/tagbar"


"" HTML Bundle
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'


"" PHP Bundle
"NeoBundle 'arnaud-lb/vim-php-namespace'


"" Javascript Bundle
NeoBundle "scrooloose/syntastic"
"" Remember to run npm install in the tern plugin folder.
NeoBundle "marijnh/tern_for_vim"

NeoBundle 'powerline/fonts'

"Project management
NeoBundle 'amiorin/vim-project'


NeoBundle 'janko-m/vim-test'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"" no one is really happy until you have these shortcuts
cab W! w!
cab Q! q!
cab Wq wq
cab Wa wa
cab wQ wq
cab WQ wq
cab W w
cab Q q

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'




" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" vim-airline
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1 


"vimfiler
let g:vimfiler_as_default_explorer = 1
" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'



"vim-project
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/Code")
Project  'repos/dotfiles'
File     'repos/dotfiles/vimrc'                       , 'vimrc'
File     'repos/dotfiles/gvimrc'                      , 'gvimrc'

Project 'sketchbook/'
File 'sketchbook/NetbyteLights_BigSign/BigSign.ino', 'bigsign'



"vim hardy
let g:hardy_arduino_path = '/home/marvin/Desktop/arduino-1.6.5/arduino'

nmap <F7> :VimFilerExplorer<CR>
nmap <F6> :VimFilerSplit ~/shortcuts<CR>

nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpenAutoClose<CR>

"" Copy/Paste/Cut
noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

let g:javascript_enable_domhtmlcss = 1


"set background=dark
"colorscheme solarized
color automation

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>


" Vim-test

nmap <silent> <leader>vt :TestNearest<CR>
nmap <silent> <leader>vT :TestFile<CR>
nmap <silent> <leader>va :TestSuite<CR>
nmap <silent> <leader>vl :TestLast<CR>
nmap <silent> <leader>vg :TestVisit<CR>

cd ~
