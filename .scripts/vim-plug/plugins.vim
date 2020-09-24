call plug#begin('$VIM_CONFIGS_ROOT/autoload/plugged')

" Vim sneak
Plug 'justinmk/vim-sneak'
" Vim easymotion
Plug 'easymotion/vim-easymotion'
" Vim surround
Plug 'tpope/vim-surround'
" Vim code dark theme
Plug 'tomasiser/vim-code-dark'

" Common plugins
if exists('g:common')
    " Vim airline
    Plug 'vim-airline/vim-airline'
    " NERDTree
    Plug 'scrooloose/nerdtree'
    " Dev icons
    Plug 'ryanoasis/vim-devicons'
    " Which key
    Plug 'liuchengxu/vim-which-key'
endif

" Typescript plugins
if exists('g:typescript')
    " Conquer of completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Typescript
    Plug 'leafgarland/typescript-vim'
    " JSX / TSX
    Plug 'peitalin/vim-jsx-typescript'
    " Javascript
    Plug 'pangloss/vim-javascript'
endif

call plug#end()