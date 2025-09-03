" vim: textwidth=80 colorcolumn=81:

set number relativenumber

" Tabs & Indents
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4 " How many visual columns should one tab character take up.

" Search & Highlighting
set ignorecase
set smartcase
" Press escape to stop highlighting search results
nnoremap <Esc> :nohlsearch<CR>

" Clone https://github.com/devsjc/vim-jb -> ~/.vim/pack/plugins/start/vim-jb
" See `:help packages`
set termguicolors
let g:jb_style='dark'
let g:jb_enable_italics=1
let g:jb_enable_unicode=1
colorscheme jb

" Transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
