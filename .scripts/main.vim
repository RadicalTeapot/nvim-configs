" TODO -> instead of setting flags in init.vim of mode file, set mode name and do a switch case here to set the proper flags

" Set leader and local leader keys
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Plugins
so $VIM_CONFIGS_ROOT/vim-plug/plugins.vim
" General settings
so $VIM_CONFIGS_ROOT/general/settings.vim
" Key mappings
so $VIM_CONFIGS_ROOT/keys/mappings.vim

if exists('g:common')
    so $VIM_CONFIGS_ROOT/keys/which-key.vim
    so $VIM_CONFIGS_ROOT/plug-configs/nerdtree.vim
endif

if exists('g:typescript')
    so $VIM_CONFIGS_ROOT/plug-configs/coc.vim
endif