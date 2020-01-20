" ========================================
" Vim plugin configuration
" ========================================
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'majutsushi/tagbar'

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-unimpaired'

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf.vim'

"Colorscheme
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
call plug#end()


" Fzf
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
