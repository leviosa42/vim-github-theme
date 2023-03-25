function! github#get_terminalansicolors_list(vars) abort " {{{
  let ansi = a:vars.ansi
  return [
    \ ansi.black,
    \ ansi.red,
    \ ansi.green,
    \ ansi.yellow,
    \ ansi.blue,
    \ ansi.magenta,
    \ ansi.cyan,
    \ ansi.white,
    \ ansi.blackBright,
    \ ansi.redBright,
    \ ansi.greenBright,
    \ ansi.yellowBright,
    \ ansi.blueBright,
    \ ansi.magentaBright,
    \ ansi.cyanBright,
    \ ansi.whiteBright,
    \ ]
endfunction " }}}

function! github#get_highlight_dict(dict) abort " {{{
  " abbrev
  let s = a:dict.scale
  let v = a:dict.vars
  let t = a:dict.temp
  let d = {}

  " general(:h highlight-groups) {{{
  " let d.ColorColumn = {}
  " let d.Conceal = {}
  let d.Cursor = { 'gui': 'reverse', 'cterm': 'reverse' }
  " let d.lCursor = {}
  " let d.CursorIM = {}
  let d.CursorColumn = { 'link': 'CursorLine' }
  let d.CursorLine = { 'bg': v.neutral.muted }
  let d.Dirctory = { 'fg': v.accent.fg }
  let d.DiffAdd = { 'bg': t.diff.add_bg }
  let d.DiffChange = { 'bg': t.diff.change_bg }
  let d.DiffDelete = { 'bg': t.diff.delete_bg }
  let d.DiffText = { 'bg': t.diff.text_bg }
  let d.EndOfBuffer = { 'link': 'Normal' }
  let d.ErrorMsg = { 'fg': v.danger.fg }
  let d.VertSplit = { 'fg': v.border.default, 'bg': v.canvas.default }
  let d.Folded = { 'fg': v.fg.muted, 'bg': v.done.subtle }
  let d.FoldColumn = { 'link': 'Folded' }
  let d.SignColumn = { 'fg': v.fg.muted, 'bg': v.sponsors.subtle }
  let d.IncSearch = { 'fg': v.canvas.default, 'bg': t.search.inc }
  let d.LineNr = { 'fg': v.fg.subtle }
  let d.LineNrAbove = { 'link': 'LineNr' }
  let d.LineNrBelow = { 'link': 'LineNr' }
  let d.CursorLineNr = { 'fg': v.fg.default, 'bg': v.neutral.muted }
  let d.CursorLineFold = { 'fg': v.fg.default, 'bg': v.done.muted }
  let d.CursorLineSign = { 'fg': v.fg.default, 'bg': v.sponsors.muted }
  let d.MatchParen = { 'bg': v.accent.emphasis }
  " let d.MessagwWindow = {}
  let d.ModeMsg = {}
  let d.NonText = { 'fg': v.attention.fg }
  let d.Normal = { 'fg': v.fg.default, 'bg': v.canvas.default }
  let d.Pmenu = { 'fg': v.fg.default, 'bg': v.neutral.subtle }
  let d.PmenuSel = { 'fg': v.fg.onEmphasis, 'bg': v.neutral.emphasis }
  let d.PmenuSbar = { 'bg': v.neutral.muted }
  let d.PmenuThumb = { 'bg': v.neutral.emphasis }
  " let d.PopupNotification = {}
  let d.Question = { 'fg': v.success.fg }
  let d.QuickFixLine = { 'fg': v.accent.fg }
  let d.Search = { 'bg': t.search.all }
  let d.CurSearch = { 'link': 'IncSearch' }
  let d.SpecialKey = { 'fg': v.fg.muted }
  " let d.SpellBad = {}
  " let d.SpellCap = {}
  " let d.SpellLocal = {}
  " let d.SpellRare = {}
  "let d.StatusLine = { 'fg': v.fg.default, 'bg': v.canvas.overlay }
  let d.StatusLine = { 'fg': v.accent.fg, 'bg': v.canvas.overlay }
  let d.StatusLineNC = { 'fg': v.fg.subtle, 'bg': v.canvas.subtle }
  let d.StatusLineTerm = { 'link': 'StatusLine' }
  let d.StatusLineTermNC = { 'link': 'StatusLineNC' }
  let d.TabLine = { 'fg': v.fg.muted, 'bg': v.neutral.muted }
  let d.TabLineFill = { 'bg': v.canvas.subtle }
  let d.TabLineSel = { 'link': 'Normal' }
  let d.Terminal = { 'fg': v.fg.default, 'bg': v.canvas.default }
  let d.Title = { 'fg': v.accent.fg }
  let d.Visual = { 'bg': v.accent.muted }
  " let d.VisualNOS = {}
  let d.WarningMsg = { 'fg': v.attention.fg }
  let d.WildMenu = { 'fg': v.fg.onEmphasis, 'bg': v.accent.emphasis }
  " let d.Menu = {}
  " let d.Scrollbar = {}
  " let d.Tooltip = {}
  " }}}

  " syntax(:h group-name) {{{
  let d.Comment = { 'fg': v.prettylights.syntax.comment }
  let d.Constant = { 'fg': v.prettylights.syntax.constant }
  let d.String = { 'fg': v.prettylights.syntax.string }
  let d.Character = {}
  let d.Number = {}
  let d.Boolean = {}
  let d.Float = {}
  let d.Identifier = { 'fg': v.prettylights.syntax.variable }
  let d.Function = { 'fg': v.prettylights.syntax.entity }
  let d.Statement = { 'fg': v.prettylights.syntax.keyword }
  let d.Conditional = {}
  let d.Repeat = {}
  let d.Label = {}
  let d.Operator = {}
  let d.Keyword = {}
  let d.Exception = {}
  let d.PreProc = { 'fg': v.prettylights.syntax.keyword }
  let d.Include = {}
  let d.Define = {}
  let d.Macro = {}
  let d.PreCondit = {}
  let d.Type = { 'fg': v.prettylights.syntax.keyword }
  let d.StorageClass = {}
  let d.Structure = {}
  let d.Typedef = {}
  let d.Special = { 'fg': v.prettylights.syntax.keyword }
  let d.SpecialChar = {}
  let d.Tag = {}
  let d.Delimiter = {}
  let d.SpecialComment = {}
  let d.Debug = {}
  let d.Underlined = { 'fg': v.prettylights.syntax.constant, 'gui': 'underline', 'cterm': 'underline' }
  let d.Ignore = {}
  let d.Error = { 'fg': v.danger.fg }
  let d.ToDo = { 'fg': v.attention.fg }

  " }}}

  " vim {{{
  " linked to Normal
  let d.vimUserFunc = { 'fg': v.prettylights.syntax.entity }
  " linked to Identifier
  let d.vimVar = { 'fg': v.fg.default }
  " linked to Statement
  let d.vimSetSep = { 'fg': v.fg.default }
  " linked to PreProc
  let d.vimOption = { 'fg': v.prettylights.syntax.constant }
  let d.vimEnvvar = { 'fg': v.prettylights.syntax.constant }
  " linked to Type
  let d.vimSpecial = { 'fg': v.prettylights.syntax.entity }
  " linked to Special
  let d.vimParenSep = { 'fg': v.fg.default }
  " linked to Delimiter
  let d.vimSep = { 'fg': v.fg.default }
  " cleard
  let d.vimFunction = { 'fg': v.prettylights.syntax.entity }
  " linked to vimFuncSID
  let d.vimMapModKey = { 'fg': v.prettylights.syntax.entity }
  " linked to vmiBracket
  let d.vimMapMod = { 'link': 'vimMapModKey' }
  " }}}
  return d
endfunction " }}}

function! github#init(user_opts) abort " {{{
  " init highlight {{{
  if 1 " for debug
    " set bg=dark
    hi clear
    if exists("syntax_on")
      syntax reset
    endif
  endif
  " }}}

  " TODO: varidate options

  " setup options {{{
  let global_opts = get(g:, 'github', {})
  let default_opts = {
    \ 'theme': 'dark'
    \ }
  let opts = extendnew(extendnew(default_opts, global_opts, 'force'), a:user_opts, 'force')
  " }}}

  let g:colors_name = 'github_' .. opts.theme

  " variables for highlighting {{{
  let scale = github#primitives#get_scale()[opts.theme]
  let vars = github#primitives#get_vars(scale)[opts.theme =~? 'dark' ? 'dark' : 'light']
  let temp = {}
  let temp.diff = {
    \ 'add_bg': vars.success.subtle,
    \ 'change_bg': vars.accent.subtle,
    \ 'delete_bg': vars.danger.subtle,
    \ 'text_bg': vars.neutral.muted
    \ }
  let temp.search = {
    \ 'all': github#util#alpha(scale.yellow[3], vars.canvas.default, 0.4),
    \ 'inc': '#ff9632'
    \ }
  " }}}

  " highlight {{{
  let hi_dict = github#get_highlight_dict({ 'scale': (scale), 'vars': (vars), 'temp': (temp) })
  call github#util#highlight_all(hi_dict)
  " }}}

  " ansi {{{
  let ansi16colors = github#get_terminalansicolors_list(vars)
  let g:terminal_ansi_colors = ansi16colors
  " }}}
endfunction " }}}

" vim: set ft=vim ts=2 sts=-1 sw=0 fdm=marker fmr={{{,}}} cms="\ %:

