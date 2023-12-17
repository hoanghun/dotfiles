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
nnoremap <silent>   <F1>        :call <SID>show_documentation()<CR>

nnoremap <silent>   <A-1>       :NERDTreeToggle<CR>
