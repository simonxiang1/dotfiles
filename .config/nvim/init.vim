call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname='nvr'
Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal 
set rnu
set nu
