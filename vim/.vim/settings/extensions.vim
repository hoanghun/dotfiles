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


Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

"Colorscheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'romainl/flattened'
Plug 'dracula/vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
call plug#end()

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
