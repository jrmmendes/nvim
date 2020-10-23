"Colorscheme
set background=dark
set termguicolors
set mouse=a
let g:airline_theme='deep_space'
" let g:gruvbox_contrast_dark='hard'
colorscheme deep-space
" colorscheme gruvbox

set rtp+=~/.fzf " fzf config

" disable tabline
set number
set showtabline=0
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=80
set hidden

" Buffer controls
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-D> :bdelete %<CR>

" keep buffer of lines above and below cursor
set scrolloff=5

" display incomplete commands
set showcmd

" Sass and CSS files autocomplete
autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript,json,yaml,yml,jsx,vue setlocal shiftwidth=2 tabstop=2

" Always set the current file as working directory
autocmd BufEnter * lcd %:p:h

" augroup twig_ft
"   au!
"   autocmd BufNewFile,BufRead *.vue set filetype=javascript
" augroup END
