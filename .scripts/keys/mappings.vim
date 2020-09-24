" Set leader and local leader keys
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

if exists('g:typescript')
    " Jump to definition of current symbol
    nmap <silent> gd <Plug>(coc-definition)
    " Jump to type definition of current symbol
    nmap <silent> gy <Plug>(coc-type-definition)
    " Jump to references of current symbol
    nmap <silent> gr <Plug>(coc-references)
    " Jump to previous error / warning in file
    nmap <leader>pe <Plug>(coc-diagnostic-prev)
    " Jump to next error / warning in file
    nmap <leader>ne <Plug>(coc-diagnostic-next)
    " Display a list of all errors / warnings in workspace
    nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
    " Search worksapce for input symbol
    nnoremap <silent> <space>s :<C-u>CocList --interactive symbols<cr>
    " Get and run fixes for current file
    nmap <leader>do <Plug>(coc-codeaction)
    " Rename symbol under cursor
    nmap <leader>rn <Plug>(coc-rename)
endif