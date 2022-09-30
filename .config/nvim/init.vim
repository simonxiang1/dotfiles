call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    "let g:vimtex_view_method='zathura'
    let g:vimtex_view_general_viewer='sioyek'
    let g:vimtex_quickfix_mode=0
    let g:vimtex_compiler_progname='nvr'
    "let g:vimtex_compiler_latexmk_engines = {
    "\ '_'                : '-xelatex',
    "\}
Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none
Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/snippet']
Plug 'dylanaraps/wal.vim'
Plug 'turbio/bracey.vim'
Plug 'preservim/nerdcommenter'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'vim-pandoc/vim-rmarkdown'
call plug#end()

vnoremap <C-c> "+y
colorscheme wal 
filetype plugin on
set shiftwidth=4 smartindent smartcase expandtab
set nu nornu
