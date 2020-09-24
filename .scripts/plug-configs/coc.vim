let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-prettier', 'coc-eslint']

" Rescan entire buffer for syntax highlighting on buffer enter (and clear on
" leave)
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" -------------------------------------------------------
"  CoC hover window

nnoremap <silent> K :call CocAction('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
    " Check if CoC window exists
    if (coc#util#has_float() == 0)
        silent call CocActionAsync('doHover')
    endif
endfunction

" Local function to show hover docs
function! s:show_hover_doc()
    " Wait 250ms before calling ShowDocIfNoDiagnostic
    call timer_start(250, 'ShowDocIfNoDiagnostic')
endfunction

" When cursor hold (i.e no key press) either in normal or insert mode call
" show_hover_doc
autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()