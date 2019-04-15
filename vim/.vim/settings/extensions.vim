" ========================================
" Vim plugin configuration
" ========================================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Themes 
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Tree file explorer
Plug 'scrooloose/nerdtree'

" Icons for nerd tree
Plug 'ryanoasis/vim-devicons'

" Status-line, airline
"Plugin 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

" Bunch of themes
"Plugin 'vim-airline/vim-airline-themes'
" Show indents
Plug 'nathanaelkane/vim-indent-guides'

" Keymaps for commenting
Plug 'scrooloose/nerdcommenter'

" Fzf - utility for searching
Plug 'junegunn/fzf.vim'

Plug 'rizzatti/dash.vim'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Asynchronous Linter
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
call plug#end()


" =================== Fzf =====================
"https://github.com/junegunn/fzf.vim/issues/210"
set rtp+=/usr/local/opt/fzf

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" ================ ALE =======================
let g:ale_python_flake8_executable = '/Users/hungig/Library/Python/3.7/bin/pylint'
let b:ale_linters = ['pylint']
" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
" Write this in your vimrc file
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
