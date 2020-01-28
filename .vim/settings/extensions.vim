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
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

Plug 'mhinz/vim-signify'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

"Colorscheme
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" VIM SIGNIFY
" :help signify-colors
let g:signify_sign_show_text = 0
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00


let g:coc_status_error_sign = "✘"
let g:coc_status_warning_sign = ""
let g:coc_status_info_sign = ""
