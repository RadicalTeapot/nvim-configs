" Setup whichkey for leader
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
let g:which_key_map =  {}

let g:which_key_map =  {
            \'name': '+leader',
            \'t': ['NERDTreeToggle', 'tree']
            \}

let g:which_key_map.b = {
            \'name': '+buffer',
            \'1': ['b1', 'buffer 1'],
            \'n': ['bn', 'next-buffer'],
            \'p': ['bp', 'previous-buffer'],
            \'l': ['ls', 'list-buffers']
            \}
call which_key#register('<Space>', 'g:which_key_map')

let g:alt_map = {}
call which_key#register('<A>', 'g:alt_map')
nnoremap <silent> <A> :<C-u>WhichKey '<A>'<CR>

let g:alt_map = {
            \'name': '+Alt',
            \'h': 'switch-left-window',
            \'j': 'switch-below-window',
            \'k': 'switch-top-window',
            \'l': 'swith-right-window'
            \}