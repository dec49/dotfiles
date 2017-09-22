"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/dec49/.config/nvim/./repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/dec49/.config/nvim/.')
  call dein#begin('/Users/dec49/.config/nvim/.')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/dec49/.config/nvim/./repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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
