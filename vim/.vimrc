" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype plugin indent on

" ================ General Config ====================
set backspace=indent,eol,start          "Allow backspace in insert mode
set history=1000                        "Store lots of :cmdline history
set visualbell                          "No sounds
set autoread                            "Reload files changed outside vim
set list listchars=tab:\ \ ,trail:·     "Display tabs and trailing spaces visually
set hidden                              "This makes vim act like all other editors, buffers can
syntax on                               "turn on syntax highlighting 
set mouse=a
set rnu nu
set splitbelow
" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
" ================ Scrolling ========================
set scrolloff=8                         "Start scrolling when we're 8 lines away from margins
set ignorecase                          "Ignore case when searching...
set smartcase                           " ...unless we type a capital
set incsearch
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set signcolumn=yes
set updatetime=100
let mapleader=" "
set cursorline
nnoremap <D-[> :bprev<CR>

if exists('+termguicolors')
  set termguicolors
endif

if filereadable(expand("~/.config/vim/settings/extensions.vim"))
  source ~/.config/vim/settings/extensions.vim
endif

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.config/vim/settings/keymap.vim

" Turns on/off cursor line on enter/leave
" autocmd InsertEnter,InsertLeave * set cul!

if has('persistent_undo')
  if !isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
  endif
  set undodir=~/.vim/backups
  set undofile
endif

colorscheme xcodedarkhc
let $BAT_THEME = 'base16'

" https://vi.stackexchange.com/questions/23110/pasting-text-on-vim-inside-tmux-breaks-indentation
if &term =~ "screen"
    let &t_BE = "\e[?2004h"
    let &t_BD = "\e[?2004l"
    exec "set t_PS=\e[200~"
    exec "set t_PE=\e[201~"
endif

" VIM SIGNIFY
" :help signify-colors
let g:signify_sign_show_text = 0

highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00
