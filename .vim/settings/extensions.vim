call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

"Plug 'mhinz/vim-signify'

Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

Plug 'junegunn/fzf.vim' | Plug '/usr/local/opt/fzf'

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

call plug#end()

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" COC
let g:coc_status_error_sign = "✘"
let g:coc_status_warning_sign = ""
let g:coc_status_info_sign = ""

command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" FLOATING
" https://github.com/neovim/neovim/issues/9718
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

" RUST VIM
" https://github.com/rust-lang/rust.vim/pull/384
let g:cargo_shell_command_runner = '!'

" VIMSPECTOR SETTINGS
let g:vimspector_enable_mappings = 'HUMAN'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

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

