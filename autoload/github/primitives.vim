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
  " light
  let s_light = g:github#primitives#scale#light
  let themes.light = { 'scale': s_light, 'vars': github#primitives#vars#get_light(s_light) }

  return themes
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s:
