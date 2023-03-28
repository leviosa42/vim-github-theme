function! github#primitives#vars#get_dark(scale) abort " {{{
  " vars.dark.(fg|canvas|barder|shadow|neutral|danger|open|closed|done|sponsors) {{{
  " modified from primitives/data/vars/global_dark.ts
  let dark_bg = a:scale.gray[9] " bg for alpha(), as same as canvas.default
  let vars = {}
  call extend(vars, {
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
      \ },
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
      \ 'subtle': github#util#alpha(a:scale.green[4], dark_bg, 0.15)
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
      \ 'muted': github#util#alpha(a:scale.pink[4], dark_bg, 0.4),
      \ 'subtle': github#util#alpha(a:scale.pink[4], dark_bg, 0.15)
      \ }
    \ }, 'error')
  " }}}
  " vars.dark.prettylights.syntax {{{
  call extend(vars, {
    \ 'prettylights': {
      \ 'syntax': {
        \ 'comment': a:scale.gray[3],
        \ 'constant': a:scale.blue[2],
        \ 'entity': a:scale.purple[2],
        \ 'storageModifierImport': a:scale.gray[1],
        \ 'entityTag': a:scale.green[1],
        \ 'keyword': a:scale.red[3],
        \ 'string': a:scale.blue[1],
        \ 'variable': a:scale.orange[2],
        \ 'brackethighlighterUnmatched': a:scale.red[4],
        \ 'invalidIllegalText': a:scale.gray[0],
        \ 'invalidIllegalBg': a:scale.red[7],
        \ 'carriageReturnText': a:scale.gray[0],
        \ 'carriageReturnBg': a:scale.red[6],
        \ 'stringRegexp': a:scale.green[1],
        \ 'markupList': a:scale.yellow[1],
        \ 'markupHeading': a:scale.blue[5],
        \ 'markupItalic': a:scale.gray[1],
        \ 'markupBold': a:scale.gray[1],
        \ 'markupDeletedText': a:scale.red[0],
        \ 'markupDeletedBg': a:scale.red[8],
        \ 'markupInsertedText': a:scale.green[0],
        \ 'markupInsertedBg': a:scale.green[8],
        \ 'markupChangedText': a:scale.orange[0],
        \ 'markupChangedBg': a:scale.orange[8],
        \ 'markupIgnoredText': a:scale.gray[1],
        \ 'markupIgnoredBg': a:scale.blue[6],
        \ 'metaDiffRange': a:scale.purple[2],
        \ 'brackethighlighterAngle': a:scale.gray[3],
        \ 'sublimelinterGutterMark': a:scale.gray[5],
        \ 'constantOtherReferenceLink': a:scale.blue[1]
        \ }
      \ }
    \ }, 'error')
  " }}}
  " vars.dark.ansi {{{
  " modified from primitives/data/vars/component_dark.ts
  call extend(vars, {
    \ 'ansi': {
      \ 'black': a:scale.gray[5],
      \ 'blackBright': a:scale.gray[4],
      \ 'white': a:scale.gray[2],
      \ 'whiteBright': a:scale.white,
      \ 'gray': a:scale.gray[4],
      \ 'red': a:scale.red[3],
      \ 'redBright': a:scale.red[2],
      \ 'green': a:scale.green[3],
      \ 'greenBright': a:scale.green[2],
      \ 'yellow': a:scale.yellow[3],
      \ 'yellowBright': a:scale.yellow[2],
      \ 'blue': a:scale.blue[3],
      \ 'blueBright': a:scale.blue[2],
      \ 'magenta': a:scale.purple[3],
      \ 'magentaBright': a:scale.purple[2],
      \ 'cyan': '#39c5cf',
      \ 'cyanBright': '#56d4dd'
      \ }
    \ }, 'error')
  " }}}
  return vars
endfunction " }}}

function! github#primitives#vars#get_light(scale) abort " {{{
  let vars = {}
  " vars.light.(fg|canvas|barder|shadow|neutral|danger|open|closed|done|sponsors) {{{
  " modified from primitives/data/vars/global_light.ts
  let light_bg = a:scale.white " bg for alpha(), as same as canvas.default
  call extend(vars, {
    \ 'fg': {
      \ 'default': a:scale.gray[9],
      \ 'muted': a:scale.gray[6],
      \ 'subtle': a:scale.gray[5],
      \ 'onEmphasis': a:scale.white
      \ },
    \ 'canvas': {
      \ 'default': a:scale.white,
      \ 'overlay': a:scale.white,
      \ 'inset': a:scale.gray[0],
      \ 'subtle': a:scale.gray[0]
      \ },
    \ 'border': {
      \ 'default': a:scale.gray[2],
      \ 'muted': github#util#lighten(a:scale.gray[2], light_bg, 0.03),
      \ 'subtle': github#util#alpha(a:scale.black, light_bg, 0.15)
      \ },
    \ 'shadow': {
      \ 'small': github#util#alpha(a:scale.black, light_bg, 0.04),
      \ 'medium': github#util#alpha(a:scale.gray[4], light_bg, 0.15),
      \ 'large': github#util#alpha(a:scale.gray[4], light_bg, 0.2),
      \ 'extraLarge': github#util#alpha(a:scale.gray[4], light_bg, 0.3)
      \ },
    \ 'neutral': {
      \ 'emphasisPlus': a:scale.gray[9],
      \ 'emphasis': a:scale.gray[5],
      \ 'muted': github#util#alpha(a:scale.gray[3], light_bg, 0.2),
      \ 'subtle': github#util#alpha(a:scale.gray[1], light_bg, 0.5)
      \ },
    \ 'accent': {
      \ 'fg': a:scale.blue[5],
      \ 'emphasis': a:scale.blue[5],
      \ 'muted': github#util#alpha(a:scale.blue[3], light_bg, 0.4),
      \ 'subtle': a:scale.blue[0]
      \ },
    \ 'success': {
      \ 'fg': a:scale.green[5],
      \ 'emphasis': a:scale.green[4],
      \ 'muted': github#util#alpha(a:scale.green[3], light_bg, 0.4),
      \ 'subtle': a:scale.green[0]
      \ },
    \ 'attention': {
      \ 'fg': a:scale.yellow[5],
      \ 'emphasis': a:scale.yellow[4],
      \ 'muted': github#util#alpha(a:scale.yellow[3], light_bg, 0.4),
      \ 'subtle': a:scale.yellow[0]
      \ },
    \ 'severe': {
      \ 'fg': a:scale.orange[5],
      \ 'emphasis': a:scale.orange[5],
      \ 'muted': github#util#alpha(a:scale.orange[3], light_bg, 0.4),
      \ 'subtle': a:scale.orange[0]
      \ },
    \ 'danger': {
      \ 'fg': a:scale.red[5],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[3], light_bg, 0.4),
      \ 'subtle': a:scale.red[0]
      \ },
    \ 'open': {
      \ 'fg': a:scale.green[5],
      \ 'emphasis': a:scale.green[4],
      \ 'muted': github#util#alpha(a:scale.green[3], light_bg, 0.4),
      \ 'subtle': a:scale.green[0]
      \ },
    \ 'closed': {
      \ 'fg': a:scale.red[5],
      \ 'emphasis': a:scale.red[5],
      \ 'muted': github#util#alpha(a:scale.red[3], light_bg, 0.4),
      \ 'subtle': a:scale.red[0]
      \ },
    \ 'done': {
      \ 'fg': a:scale.purple[5],
      \ 'emphasis': a:scale.purple[5],
      \ 'muted': github#util#alpha(a:scale.purple[3], light_bg, 0.4),
      \ 'subtle': a:scale.purple[0]
      \ },
    \ 'sponsors': {
      \ 'fg': a:scale.pink[5],
      \ 'emphasis': a:scale.pink[5],
      \ 'muted': github#util#alpha(a:scale.pink[3], light_bg, 0.4),
      \ 'subtle': a:scale.pink[0]
      \ }
    \ }, 'error')
  " }}}
  " var.prettylights.syntax {{{
  call extend(vars, {
    \ 'prettylights': {
      \ 'syntax': {
        \ 'comment': a:scale.gray[5],
        \ 'constant': a:scale.blue[6],
        \ 'entity': a:scale.purple[5],
        \ 'storageModifierImport': a:scale.gray[9],
        \ 'entityTag': a:scale.green[6],
        \ 'keyword': a:scale.red[5],
        \ 'string': a:scale.blue[8],
        \ 'variable': a:scale.orange[6],
        \ 'brackethighlighterUnmatched': a:scale.red[7],
        \ 'invalidIllegalText': a:scale.gray[0],
        \ 'invalidIllegalBg': a:scale.red[7],
        \ 'carriageReturnText': a:scale.gray[0],
        \ 'carriageReturnBg': a:scale.red[5],
        \ 'stringRegexp': a:scale.green[6],
        \ 'markupList': a:scale.yellow[9],
        \ 'markupHeading': a:scale.blue[6],
        \ 'markupItalic': a:scale.gray[9],
        \ 'markupBold': a:scale.gray[9],
        \ 'markupDeletedText': a:scale.red[7],
        \ 'markupDeletedBg': a:scale.red[0],
        \ 'markupInsertedText': a:scale.green[6],
        \ 'markupInsertedBg': a:scale.green[0],
        \ 'markupChangedText': a:scale.orange[6],
        \ 'markupChangedBg': a:scale.orange[1],
        \ 'markupIgnoredText': a:scale.gray[1],
        \ 'markupIgnoredBg': a:scale.blue[6],
        \ 'metaDiffRange': a:scale.purple[5],
        \ 'brackethighlighterAngle': a:scale.gray[6],
        \ 'sublimelinterGutterMark': a:scale.gray[4],
        \ 'constantOtherReferenceLink': a:scale.blue[8]
        \ }
      \ },
    \ }, 'error')
  " }}}
  " vars.light.ansi {{{
  call extend(vars, {
    \ 'ansi': {
      \ 'black': a:scale.gray[9],
      \ 'blackBright': a:scale.gray[6],
      \ 'white': a:scale.gray[5],
      \ 'whiteBright': a:scale.gray[4],
      \ 'gray': a:scale.gray[5],
      \ 'red': a:scale.red[5],
      \ 'redBright': a:scale.red[6],
      \ 'green': a:scale.green[6],
      \ 'greenBright': a:scale.green[5],
      \ 'yellow': a:scale.yellow[8],
      \ 'yellowBright': a:scale.yellow[7],
      \ 'blue': a:scale.blue[5],
      \ 'blueBright': a:scale.blue[4],
      \ 'magenta': a:scale.purple[5],
      \ 'magentaBright': a:scale.purple[4],
      \ 'cyan': '#1b7c83',
      \ 'cyanBright': '#3192aa'
      \ }
    \ }, 'error')
  return vars
  " }}}
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %s:
