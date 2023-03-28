" These codes are modified from https:github.com/primer/primitives.
" License: https://github.com/primer/primitives/blob/main/LICENSE {{{
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:

" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.

" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE. }}}

function! github#primitives#get_dark_colorbind() abort " {{{
  let scale = g:github#primitives#scale#dark_colorbind
  let prevars = github#primitives#vars#get_dark(scale) " to get bg
  let bg = prevars.canvas.default
  let exceptions = {
    \ 'open': {
      \ 'fg': scale.orange[3],
      \ 'emphasis': scale.orange[5],
      \ 'muted': github#util#alpha(scale.orange[4], bg, 0.4),
      \ 'subtle': github#util#alpha(scale.orange[4], bg, 0.15)
      \ },
    \ 'closed': {
      \ 'fg': scale.gray[3],
      \ 'emphasis': scale.gray[4],
      \ 'muted': github#util#alpha(scale.gray[4], bg, 0.4),
      \ 'subtle': github#util#alpha(scale.gray[4], bg, 0.1)
      \ }
    \ }
  return { 'scale': scale, 'vars': github#util#merge(prevars, exceptions) }
endfunction " }}}

function! github#primitives#get_dark_high_contrast() abort " {{{
  let scale = g:github#primitives#scale#dark_high_contrast
  let prevars = github#primitives#vars#get_dark(scale) " to get bg
  let bg = prevars.canvas.default
  let exceptions = {
    \ 'fg': {
      \ 'muted': scale.gray[1],
      \ 'onEmphasis': scale.gray[9]
      \ },
    \ 'border': {
      \ 'default': scale.gray[5],
      \ 'muted': scale.gray[5],
      \ 'subtle': scale.gray[5]
      \ },
    \ 'neutral': {
      \ 'emphasis': scale.gray[4],
      \ 'emphasisPlus': scale.gray[0]
      \ },
    \ 'accent': {
      \ 'muted': scale.blue[4],
      \ },
    \ 'success': {
      \ 'muted': scale.green[4],
      \ },
    \ 'attention': {
      \ 'muted': scale.yellow[4],
      \ },
    \ 'severe': {
      \ 'muted': scale.orange[4],
      \ },
    \ 'danger': {
      \ 'muted': scale.red[4],
      \ },
    \ 'done': {
      \ 'muted': scale.purple[4],
      \ },
    \ 'sponsors': {
      \ 'muted': scale.pink[4],
      \ },
    \ 'diffstat': {
      \ 'deletionBorder': scale.red[2],
      \ 'additionBorder': scale.green[2]
      \ },
    \ 'codemirror': {
      \ 'selectionBg': github#util#alpha(scale.blue[4], bg, 0.4),
      \ },
    \ 'diffBlob': {
      \ 'addition': {
        \ 'fg': prevars.fg.onEmphasis
        \ },
      \ 'deletion': {
        \ 'fg': prevars.fg.onEmphasis,
        \ },
      \ 'expander': {
        \ 'icon': prevars.fg.default,
        \ },
      \ 'hunk': {
        \ 'numBg': github#util#alpha(prevars.accent.muted, bg, 0.4),
        \ },
      \ }
    \ }
  return { 'scale': scale, 'vars': github#util#merge(prevars, exceptions) }
endfunction " }}}

function! github#primitives#get_light_colorbind() abort " {{{
  let scale = g:github#primitives#scale#light_colorbind
  let prevars = github#primitives#vars#get_light(scale) " to get bg
  let bg = prevars.canvas.default
  let exceptions = {
    \ 'open': {
      \ 'fg': scale.orange[5],
      \ 'emphasis': scale.orange[4],
      \ 'muted': github#util#alpha(scale.orange[3], bg, 0.4),
      \ 'subtle': scale.orange[0]
      \ },
    \ 'closed': {
      \ 'fg': scale.gray[5],
      \ 'emphasis': scale.gray[5],
      \ 'muted': github#util#alpha(scale.gray[3], bg, 0.4),
      \ 'subtle': scale.gray[0]
      \ },
    \ 'diffBlob': {
      \ 'addition': { 'numBg': prevars.success.muted,
      \ 'lineBg': github#util#alpha(scale.green[0], bg, 0.5),
      \ 'wordBg': prevars.success.muted
      \ },
    \ 'deletion': {
      \ 'numBg': prevars.danger.muted,
      \ 'lineBg': github#util#alpha(scale.red[0], bg, 0.5),
      \ 'wordBg': github#util#alpha(scale.red[2], bg, 0.5)
      \ }
    \ }
  \ }
  return { 'scale': scale, 'vars': github#util#merge(prevars, exceptions) }
endfunction " }}}

function! github#primitives#get_light_high_contrast() abort " {{{
  let scale = g:github#primitives#scale#light_high_contrast
  let prevars = github#primitives#vars#get_light(scale) " to get bg
  let bg = prevars.canvas.default
  let exceptions = {
    \ 'fg': {
      \ 'muted': scale.gray[9],
    \ },
    \ 'canvas': {
      \ 'inset': scale.white,
      \ 'subtle': scale.gray[1]
    \ },
    \ 'border': {
      \ 'default': scale.gray[8],
      \ 'muted': scale.gray[4],
      \ 'subtle': github#util#alpha(scale.black, bg, 0.8)
    \ },
    \ 'neutral': {
      \ 'subtle': scale.gray[1]
    \ },
    \ 'accent': {
      \ 'muted': scale.blue[3]
    \ },
    \ 'success': {
      \ 'emphasis': scale.green[5],
      \ 'muted': scale.green[3]
    \ },
    \ 'attention': {
      \ 'emphasis': scale.yellow[5],
      \ 'muted': scale.yellow[3]
    \ },
    \ 'severe': {
      \ 'muted': scale.orange[3]
    \ },
    \ 'danger': {
      \ 'muted': scale.red[3]
    \ },
    \ 'done': {
      \ 'muted': scale.purple[3]
    \ },
    \ 'sponsors': {
      \ 'muted': scale.pink[3]
    \ },
    \ 'diffBlob': {
      \ 'addition': {
        \ 'fg': prevars.fg.onEmphasis,
        \ 'wordBg': prevars.success.emphasis
      \ },
      \ 'deletion': {
        \ 'fg': prevars.fg.onEmphasis,
        \ 'wordBg': prevars.danger.emphasis
      \ },
      \ 'hunk': {
        \ 'numBg': scale.blue[1]
      \ }
    \ }
  \ }
  return { 'scale': scale, 'vars': github#util#merge(prevars, exceptions) }
endfunction " }}}

" returns {[theme]: { scale: <dict>, vars: <dict> }}
" it will be used in init()
function! github#primitives#get_theme_all() abort  "{{{
  let themes = {}
  " TODO:
  " dark
  let s_dark = g:github#primitives#scale#dark
  let themes.dark = { 'scale': s_dark, 'vars': github#primitives#vars#get_dark(s_dark) }
  " dark_dimmed
  let s_dark_dimmed = g:github#primitives#scale#dark_dimmed
  let themes.dark_dimmed = { 'scale': s_dark_dimmed, 'vars': github#primitives#vars#get_dark(s_dark_dimmed) }
  " dark_colorbind
  let themes.dark_colorbind = github#primitives#get_dark_colorbind()
  " dark_high_contrast
  let themes.dark_high_contrast = github#primitives#get_dark_high_contrast()
  " dark_tritanopia
  let s_dark_tritanopia = g:github#primitives#scale#dark_tritanopia
  let themes.dark_tritanopia = { 'scale': s_dark_tritanopia, 'vars': github#primitives#vars#get_dark(s_dark_tritanopia) }
  " light
  let s_light = g:github#primitives#scale#light
  let themes.light = { 'scale': s_light, 'vars': github#primitives#vars#get_light(s_light) }
  " light_colorbind
  let themes.light_colorbind = github#primitives#get_light_colorbind()
  " light_high_contrast
  let themes.light_high_contrast = github#primitives#get_light_high_contrast()

  return themes
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s:
