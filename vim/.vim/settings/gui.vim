"\ 'colorscheme': 'PaperColor_light',
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

let ayucolor="mirage"
set background=dark
colorscheme ayu
"colorscheme one
"
" focuses the new window
set splitbelow
set splitright
