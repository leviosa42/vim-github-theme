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

function! github#primitives#get_scale() abort " {{{
  let scale = {}
  " scale.dark {{{
  " modified from primitives/data/colors/themes/dark.ts
  let scale.dark = {
    \ black: '#010409',
    \ white: '#ffffff',
    \ gray: [ '#f0f6fc', '#c9d1d9', '#b1bac4', '#8b949e', '#6e7681', '#484f58', '#30363d', '#21262d', '#161b22', '#0d1117' ],
    \ blue: [ '#cae8ff', '#a5d6ff', '#79c0ff', '#58a6ff', '#388bfd', '#1f6feb', '#1158c7', '#0d419d', '#0c2d6b', '#051d4d' ],
    \ green: [ '#aff5b4', '#7ee787', '#56d364', '#3fb950', '#2ea043', '#238636', '#196c2e', '#0f5323', '#033a16', '#04260f' ],
    \ yellow: [ '#f8e3a1', '#f2cc60', '#e3b341', '#d29922', '#bb8009', '#9e6a03', '#845306', '#693e00', '#4b2900', '#341a00' ],
    \ orange: [ '#ffdfb6', '#ffc680', '#ffa657', '#f0883e', '#db6d28', '#bd561d', '#9b4215', '#762d0a', '#5a1e02', '#3d1300' ],
    \ red: [ '#ffdcd7', '#ffc1ba', '#ffa198', '#ff7b72', '#f85149', '#da3633', '#b62324', '#8e1519', '#67060c', '#490202' ],
    \ purple: [ '#eddeff', '#e2c5ff', '#d2a8ff', '#bc8cff', '#a371f7', '#8957e5', '#6e40c9', '#553098', '#3c1e70', '#271052' ],
    \ pink: [ '#ffdaec', '#ffbedd', '#ff9bce', '#f778ba', '#db61a2', '#bf4b8a', '#9e3670', '#7d2457', '#5e103e', '#42062a' ],
    \ coral: [ '#ffddd2', '#ffc2b2', '#ffa28b', '#f78166', '#ea6045', '#cf462d', '#ac3220', '#872012', '#640d04', '#460701' ]
    \ } " }}}
  " scale.light {{{
  " modified from primitives/data/colors/themes/light.ts
  let scale.light = {
    \ black: '#1b1f24',
    \ white: '#ffffff',
    \ gray: [ '#f6f8fa', '#eaeef2', '#d0d7de', '#afb8c1', '#8c959f', '#6e7781', '#57606a', '#424a53', '#32383f', '#24292f' ],
    \ blue: [ '#ddf4ff', '#b6e3ff', '#80ccff', '#54aeff', '#218bff', '#0969da', '#0550ae', '#033d8b', '#0a3069', '#002155' ],
    \ green: [ '#dafbe1', '#aceebb', '#6fdd8b', '#4ac26b', '#2da44e', '#1a7f37', '#116329', '#044f1e', '#003d16', '#002d11' ],
    \ yellow: [ '#fff8c5', '#fae17d', '#eac54f', '#d4a72c', '#bf8700', '#9a6700', '#7d4e00', '#633c01', '#4d2d00', '#3b2300' ],
    \ orange: [ '#fff1e5', '#ffd8b5', '#ffb77c', '#fb8f44', '#e16f24', '#bc4c00', '#953800', '#762c00', '#5c2200', '#471700' ],
    \ red: [ '#ffebe9', '#ffcecb', '#ffaba8', '#ff8182', '#fa4549', '#cf222e', '#a40e26', '#82071e', '#660018', '#4c0014' ],
    \ purple: [ '#fbefff', '#ecd8ff', '#d8b9ff', '#c297ff', '#a475f9', '#8250df', '#6639ba', '#512a97', '#3e1f79', '#2e1461' ],
    \ pink: [ '#ffeff7', '#ffd3eb', '#ffadda', '#ff80c8', '#e85aad', '#bf3989', '#99286e', '#772057', '#611347', '#4d0336' ],
    \ coral: [ '#fff0eb', '#ffd6cc', '#ffb4a1', '#fd8c73', '#ec6547', '#c4432b', '#9e2f1c', '#801f0f', '#691105', '#510901' ]
    \ } " }}}
  return scale
endfunction " }}}

function! github#primitives#get_vars() abort " {{{
  let vars = {}
  " vars.dark {{{
  " modified from primitives/data/vars/global_dark.ts
  let dark_bg = scale.gray[9] " bg for alpha(), as same as canvas.default
  let vars.dark = {
    \ 'fg': {
      \ 'default': a:scale.gray[1],
      \ 'muted': a:scale.gray[3],
      \ 'subtle': a:scale.gray[4],
      \ 'onEmphasis': a:scale.white
      \ },
    \ 'canvas': {
      \ 'default': a:scale.gray[9],
      \ 'overlay': a:scale.gray[8],
      \ 'inset': a:scale.black,
      \ 'subtle': a:scale.gray[8]
      \ },
    \ 'border': {
      \ 'default': a:scale.gray[6],
      \ 'muted': a:scale.gray[7],
      \ 'subtle': github#util#alpha(a:scale.gray[0], dark_bg, 0.1)
      \ },
    \ 'shadow': {
      \ 'small': dark_bg,
      \ 'medium': a:scale.black,
      \ 'large': a:scale.black,
      \ 'extraLarge': a:scale.black
      \ }
    \ 'neutral': {
      \ 'emphasisPlus': a:scale.gray[4],
      \ 'emphasis': a:scale.gray[4],
      \ 'muted': github#util#alpha(a:scale.gray[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.gray[4], dark_bg, 0.1)
      \ },
    \ 'accent': {
      \ 'fg': a:scale.blue[3],
      \ 'emphasis': a:scale.blue[5],
      \ 'muted': github#util#alpha(a:scale.blue[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.blue[4], dark_bg, 0.15)
      \ },
    \ 'success': {
      \ 'fg': a:scale.green[3],
      \ 'emphasis': a:scale.green[5],
      \ 'muted': github#util#alpha(a:scale.green[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.green[4], dark_bg, 0.15)
      \ },
    \ 'attention': {
      \ 'fg': a:scale.yellow[3],
      \ 'emphasis': a:scale.yellow[5],
      \ 'muted': github#util#alpha(a:scale.yellow[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.yellow[4], dark_bg, 0.15)
      \ },
    \ 'severe': {
      \ 'fg': a:scale.orange[4],
      \ 'emphasis': a:scale.orange[5],
      \ 'muted': github#util#alpha(a:scale.orange[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.orange[4], dark_bg, 0.15)
      \ },
    \ 'danger': {
      \ 'fg': a:scale.red[4],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.red[4], dark_bg, 0.15)
      \ },
    \ 'open': {
      \ 'fg': a:scale.green[3],
      \ 'emphasis': a:scale.green[5],
      \ 'muted': github#util#alpha(a:scale.green[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.green[4], dark_bg, dark_bg, 0.15)
      \ },
    \ 'closed': {
      \ 'fg': a:scale.red[4],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[4], dark_bg, 0.4),
        \ 'subtle': github#util#alpha(a:scale.red[4], dark_bg, 0.15)
        \ },
    \ 'done': {
      \ 'fg': a:scale.purple[4],
      \ 'emphasis': a:scale.purple[5],
      \ 'muted': github#util#alpha(a:scale.purple[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.purple[4], dark_bg, 0.15)
      \ },
    \ 'sponsors': {
      \ 'fg': a:scale.pink[4],
      \ 'emphasis': a:scale.pink[5],
      \ 'muted': github#util#alpha(a:scale.pink[4], 0.4),
      \ 'subtle': github#util#alpha(a:scale.pink[4], dark_bg, 0.15)
      \ }
    \ }
  " }}}
  " vars.light {{{
  " modified from primitives/data/vars/global_light.ts
  let bg_light = a:scale.white " bg for alpha(), as same as canvas.default
  let vars.light = {
    \ 'fg': {
      \ 'default': a:scale.gray[9],
      \ 'muted': a:scale.gray[6],
      \ 'subtle': a:scale.gray[5],
      \ 'onEmphasis': a:scale.white
      },
    \ 'canvas': {
      \ 'default': a:scale.white,
      \ 'overlay': a:scale.white,
      \ 'inset': a:scale.gray[0],
      \ 'subtle': a:scale.gray[0]
      },
    \ 'border': {
      \ 'default': a:scale.gray[2],
      \ 'muted': github#util#lighten(a:scale.gray[2], 0.03),
      \ 'subtle': github#util#alpha(a:scale.black, 0.15)
      },
    \ 'shadow': {
      \ 'small': github#util#alpha(a:a:scale.black, light_bg, 0.04),
      \ 'medium': github#util#alpha(a:a:scale.gray[4]], light_bg, 0.15),
      \ 'large': github#util#alpha(a:a:scale.gray[4]], light_bg, 0.2),
      \ 'extraLarge': github#util#alpha(a:a:scale.gray[4]], light_bg, 0.3),
      },
    \ 'neutral': {
      \ 'emphasisPlus': a:scale.gray[9],
      \ 'emphasis': a:scale.gray[5],
      \ 'muted': github#util#alpha(a:scale.gray[3], 0.2),
      \ 'subtle': github#util#alpha(a:scale.gray[1], 0.5)
      },
    \ 'accent': {
      \ 'fg': a:scale.blue[5],
      \ 'emphasis': a:scale.blue[5],
      \ 'muted': github#util#alpha(a:scale.blue[3], 0.4),
      \ 'subtle': a:scale.blue[0]
      },
    \ 'success': {
      \ 'fg': a:scale.green[5],
      \ 'emphasis': a:scale.green[4],
      \ 'muted': github#util#alpha(a:scale.green[3], 0.4),
      \ 'subtle': a:scale.green[0]
      },
    \ 'attention': {
      \ 'fg': a:scale.yellow[5],
      \ 'emphasis': a:scale.yellow[4],
      \ 'muted': github#util#alpha(a:scale.yellow[3], 0.4),
      \ 'subtle': a:scale.yellow[0]
      },
    \ 'severe': {
      \ 'fg': a:scale.orange[5],
      \ 'emphasis': a:scale.orange[5],
      \ 'muted': github#util#alpha(a:scale.orange[3], 0.4),
      \ 'subtle': a:scale.orange[0]
      },
    \ 'danger': {
      \ 'fg': a:scale.red[5],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[3], 0.4),
      \ 'subtle': a:scale.red[0]
      },
    \ 'open': {
      \ 'fg': a:scale.green[5],
      \ 'emphasis': a:scale.green[4],
      \ 'muted': github#util#alpha(a:scale.green[3], 0.4),
      \ 'subtle': a:scale.green[0]
      },
    \ 'closed': {
      \ 'fg': a:scale.red[5],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[3], 0.4),
      \ 'subtle': a:scale.red[0]
      },
    \ 'done': {
      \ 'fg': a:scale.purple[5],
      \ 'emphasis': a:scale.purple[5],
      \ 'muted': github#util#alpha(a:scale.purple[3], 0.4),
      \ 'subtle': a:scale.purple[0]
      },
    \ 'sponsors': {
      \ 'fg': a:scale.pink[5],
      \ 'emphasis': a:scale.pink[5],
      \ 'muted': github#util#alpha(a:scale.pink[3], 0.4),
      \ 'subtle': a:scale.pink[0]
      \ },
    \ }
  " }}}
  return vars
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s: