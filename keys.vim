" [ == KEY MAPPINS == ] "
nnoremap <C-q> :NERDTree <CR>
nnoremap <C-a> :e $HOME/.config/nvim/config/plugins/index.vim <CR>
nnoremap <C-h> :bprevious <CR>
nnoremap <C-l> :bnext <CR>
nnoremap <C-d> :bd %<CR>
nnoremap <A-left> :tabp <CR>
nnoremap <A-right> :tabn <CR>
nnoremap <A-up> :tabl <CR>
map <Leader><Space> :noh<CR>;
nnoremap <A-i> >> 
nnoremap <A-u> << 

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
