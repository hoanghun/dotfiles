call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'neovim/nvim-lspconfig'

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

Plug 'mhinz/vim-signify'
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'

Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

Plug 'junegunn/fzf.vim' | Plug '/opt/homebrew/opt/fzf'
Plug 'mhinz/vim-startify'

" colors
Plug 'NLKNguyen/papercolor-theme'
Plug 'arzg/vim-colors-xcode'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'cormacrelf/vim-colors-github'
Plug 'gosukiwi/vim-atom-dark'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

" crypto
Plug 'tomlion/vim-solidity'

call plug#end()

let g:vim_json_conceal=0

" RUST VIM
" https://github.com/rust-lang/rust.vim/pull/384
let g:cargo_shell_command_runner = '!'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Indent lines
let g:indentLine_char = '|'

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

