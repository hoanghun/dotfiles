nnoremap <silent>   ""          "*p
nnoremap <silent>   <leader>l   :set background=light<CR>
nnoremap <silent>   <leader>d   :set background=dark<CR>
nnoremap <silent>   <leader>e   :e #<CR>
nnoremap            <S-F10>     :make run<CR>
nnoremap            <S-F9>      :make build<CR>

inoremap <silent>   jj          <Esc>
inoremap <silent>   ;; <Esc>A;

nnoremap <silent>   <C-S-N>     :GFiles<CR>
nnoremap <silent>   <C-E>       :Buffers<CR>

nmap     <silent>   <C-_>       <Plug>NERDCommenterToggle
vmap     <silent>   <C-_>       <Plug>NERDCommenterToggle

xmap <A-cr>  <Plug>(coc-codeaction-selected)
nmap <A-cr>  <Plug>(coc-codeaction-selected)

nnoremap <silent>   <C-S-A-l>   :Format<CR>
nnoremap <silent>   <C-Q>       :call <SID>show_documentation()<CR>
nnoremap <silent>   <space>a    :<C-u>CocList diagnostics<cr>
nnoremap <silent>   <A-7>       :<C-u>CocList outline<cr>
nnoremap <silent>   <space>n    :<C-u>CocList -I symbols<cr>
nnoremap <silent>   <space>j    :<C-u>CocNext<CR>
nnoremap <silent>   <space>k    :<C-u>CocPrev<CR>
nnoremap <silent>   <space>p    :<C-u>CocListResume<CR>

inoremap <expr>     <cr>        pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr>     <S-TAB>     pumvisible() ? "\<C-p>" : "\<C-h>"

nmap                <S-F6>      <Plug>(coc-rename)
nmap     <silent>   <S-F2>      <Plug>(coc-diagnostic-prev)
nmap     <silent>   <F2>        <Plug>(coc-diagnostic-next)

nmap     <silent>   gd          <Plug>(coc-definition)
nmap     <silent>   gy          <Plug>(coc-type-definition)
nmap     <silent>   gi          <Plug>(coc-implementation)
nmap     <silent>   gr          <Plug>(coc-references)

nnoremap <silent>   <A-1>       :NERDTreeToggle<CR>

inoremap <silent>   <expr>      <c-space>   coc#refresh()
inoremap <silent>   <expr>      <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
