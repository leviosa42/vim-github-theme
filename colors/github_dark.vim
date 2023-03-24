let s:save_cpo = &cpoptions

call github#init({'theme': 'dark'})

let &cpoptions = s:save_cpo
unlet! s:save_cpo
" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s:
