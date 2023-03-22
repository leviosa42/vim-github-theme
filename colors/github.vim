let g:colors_name = 'github'

let s:save_cpo = &cpoptions

" init
if 0 " for debug
  set bg=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let &cpoptions = s:save_cpo
unlet! s:save_cpo
" vim: set ft=vim ts=2 sts=-1 sw=0  cms="\ %s:
