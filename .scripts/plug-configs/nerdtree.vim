let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Close NERDTree when opening a file
let g:NERDTreeQuitOnOpen = 1
" Delete buffer of fiel deleted in NERDTree 
let NERDTreeAutoDeleteBuffer = 1
" Disable 'Press ? for help' message
let NERDTreeMinimalUI = 1

" Automatically close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
