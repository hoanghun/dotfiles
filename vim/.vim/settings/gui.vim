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
colorscheme ayu
set background=dark

" focuses the new window
set splitbelow
set splitright

hi NonText guifg=bg
