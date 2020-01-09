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
"let ayucolor="light"  " for light version of theme
"colorscheme ayu
colorscheme onehalfdark
"set background=light
"colorscheme PaperColor
"colorscheme yang
"colorscheme onedark 
"colorscheme yin

" focuses the new window
set splitbelow
set splitright


let g:indent_guides_guide_size = 1
