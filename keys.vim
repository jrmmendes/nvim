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
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Node Inspector Keys
nnoremap <silent><F4> :NodeInspectStart<cr>
nnoremap <silent><F5> :NodeInspectRun<cr>
nnoremap <silent><F6> :NodeInspectConnect("127.0.0.1:9229")<cr>
nnoremap <silent><F7> :NodeInspectStepInto<cr>
nnoremap <silent><F8> :NodeInspectStepOver<cr>
nnoremap <silent><F9> :NodeInspectToggleBreakpoint<cr>
nnoremap <silent><F10> :NodeInspectStop<cr>
