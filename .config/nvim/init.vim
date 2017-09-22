"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/nvim/./repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.config/nvim/.')

  " XDG base direcroty compartible
  let g:dein#cache_directory = $HOME . '/.cache/dein'
  
  "dein begin
  call dein#begin($HOME . '/.config/nvim/dein')

  " TOML file
  let s:toml_dir  = $HOME . '/.config/nvim/dein/toml'
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  
  " Load TOML and cache
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  
  
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


colorscheme  monokai
 
set nowritebackup
set nobackup
set noswapfile
 
set virtualedit=block
set virtualedit=onemore
 
" Serach
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
 
" Display
syntax on
set number
set title
set showmatch
set noerrorbells
set showmatch matchtime=1
set softtabstop=2
set smartindent
 
set wildmenu
set history=5000

" Clipboard
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
      set paste
      return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
