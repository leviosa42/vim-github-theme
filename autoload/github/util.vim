function! github#util#error(msg) abort " {{{
  echohl ErrorMsg
  echo '[github-theme]: ' .. a:msg
  echohl None
endfunction " }}}

" Convert hex to rgb.
" hex<string>
"   => {'r': <number>, 'g': <number>, 'b': <number>}
function! github#util#hex2rgb(hex) abort " {{{
  let rrggbb = substitute(a:hex, '^#', '', '')
  let r = str2nr(strpart(rrggbb, 0, 2), 16)
  let g = str2nr(strpart(rrggbb, 2, 2), 16)
  let b = str2nr(strpart(rrggbb, 4, 2), 16)
  return { 'r': r, 'g': g, 'b': b }
endfunction " }}}

" Convert rgb to hex.
" {'r': <number>, 'g': <number>, 'b': <number>}
"   => hex<string>
function! github#util#rgb2hex(rgb) abort " {{{
  let rr = printf('%02x', a:rgb.r)
  let gg = printf('%02x', a:rgb.g)
  let bb = printf('%02x', a:rgb.b)
  return '#' .. rr .. gg .. bb
endfunction " }}}

" Blend fg_hex and b_hex based on alpha.
" alpha:  0 <------> 1
"        bg <------> fg
function! github#util#alpha(fg_hex, bg_hex, alpha) abort " {{{
  let fg_rgb = github_mini#hex2rgb(a:fg_hex)
  let bg_rgb = github_mini#hex2rgb(a:bg_hex)
  let bl_rgb = {}
  for k in ['r', 'g', 'b']
    let n = fg_rgb[k] * a:alpha + bg_rgb[k] * (1 - a:alpha)
    let bl_rgb[k] = float2nr(floor(n + 0.5))
  endfor
  return github#util#rgb2hex(bl_rgb)
endfunction " }}}

" TODO
function! github#util#lighten(hex, amount, hex_lightness = '#ffffff') abort " {{{
  return a:hex
endfunction " }}}

" TODO
function! github#util#darken(hex, amount, hex_darkness = '#000000') abort " {{{
  return a:hex
endfunction " }}}

" Get command to highlight.
" (name<string>, style<dict>)
"   => cmd<string>
function! github#util#get_hi_cmd(name, style) abort " {{{
  if empty(a:style)
    return '" ' .. a:name
  endif
  if has_key(a:style, 'link')
    return printf('hi! link %s %s', a:name, a:style.link)
    return
  endif
  let fg    = has_key(a:style, 'fg')    ? a:style.fg    : 'NONE'
  let bg    = has_key(a:style, 'bg')    ? a:style.bg    : 'NONE'
  let gui   = has_key(a:style, 'gui')   ? a:style.gui   : 'NONE'
  let sp    = has_key(a:style, 'sp')    ? a:style.sp    : 'NONE'
  let cterm = has_key(a:style, 'cterm') ? a:style.cterm : 'NONE'
  " let ul    = has_key(a:style, 'ul')    ? a:style.ul    : 'NONE'
  return printf('hi %s guifg=%s guibg=%s guisp=%s gui=%s cterm=%s', a:name, fg, bg, sp, gui, cterm)
  return
endfunction " }}}

" Highlight based on dictionary.
" dict<dict>
"   => void
function! github_mini#highlight_all(dict) abort " {{{
  for [name, style] in items(a:dict)
    execute github_mini#util#get_hi_cmd(name, style)
  endfor
  return
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s:
