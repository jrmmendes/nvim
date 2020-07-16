let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \  'typescript.tsx' : {
    \      'extends' : 'tsx',
    \  },
  \}
autocmd FileType vue,svelte,html,htmldjango,sass,scss,less,css,ejs,jst,jinja,javascript,typescript EmmetInstall
