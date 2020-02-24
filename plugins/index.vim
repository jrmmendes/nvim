call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'sjl/badwolf'

runtime plugins/core/plug.vim
runtime plugins/presets/javascript/plug.vim
runtime plugins/presets/completition/plug.vim

call plug#end()

runtime plugins/core/settings.vim
runtime plugins/presets/javascript/settings.vim
runtime plugins/presets/completition/settings.vim
