" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Colorscheme scheme adaptation by: Hendrikpetertje
" original idea by the makers: https://github.com/ayu-theme

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-materia.sh"
  endif
endif

" Colour guide:
" 00: bg
" 01: line, panel
" 02: selection
" 03: fg_idle, comment
" 04: guide
" 05: fg
" 06: unused extra fg
" 07: unused gray
" 08: error
" 09: keyword, function
" 0A: special
" 0B: string & value
" 0C: regex
" 0D: tag
" 0E: constant, panel
" 0F: operator,

" GUI color definitions
let s:gui00        = "0f1419"
let g:base16_gui00 = "0f1419"
let s:gui01        = "14191f"
let g:base16_gui01 = "14191f"
let s:gui02        = "1f2c39"
let g:base16_gui02 = "1f2c39"
let s:gui03        = "3e4b59"
let g:base16_gui03 = "3e4b59"
let s:gui04        = "707a8c"
let g:base16_gui04 = "707a8c"
let s:gui05        = "E6E1CF"
let g:base16_gui05 = "E6E1CF"
let s:gui06        = "fafafa"
let g:base16_gui06 = "fafafa"
let s:gui07        = "5c6773"
let g:base16_gui07 = "5c6773"
let s:gui08        = "ff3333"
let g:base16_gui08 = "ff3333"
let s:gui09        = "ff3333"
let g:base16_gui09 = "ff3333"
let s:gui0A        = "f29718"
let g:base16_gui0A = "f29718"
let s:gui0B        = "b8cc52"
let g:base16_gui0B = "b8cc52"
let s:gui0C        = "95e6cb"
let g:base16_gui0C = "95e6cb"
let s:gui0D        = "36a3d9"
let g:base16_gui0D = "36a3d9"
let s:gui0E        = "ffee99"
let g:base16_gui0E = "ffee99"
let s:gui0F        = "ffee99"
let g:base16_gui0F = "ffee99"

" Terminal color definitions
let s:cterm00        = "00"
let g:base16_cterm00 = "00"
let s:cterm03        = "08"
let g:base16_cterm03 = "08"
let s:cterm05        = "07"
let g:base16_cterm05 = "07"
let s:cterm07        = "15"
let g:base16_cterm07 = "15"
let s:cterm08        = "01"
let g:base16_cterm08 = "01"
let s:cterm0A        = "03"
let g:base16_cterm0A = "03"
let s:cterm0B        = "02"
let g:base16_cterm0B = "02"
let s:cterm0C        = "06"
let g:base16_cterm0C = "06"
let s:cterm0D        = "04"
let g:base16_cterm0D = "04"
let s:cterm0E        = "05"
let g:base16_cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01        = "18"
  let g:base16_cterm01 = "18"
  let s:cterm02        = "19"
  let g:base16_cterm02 = "19"
  let s:cterm04        = "20"
  let g:base16_cterm04 = "20"
  let s:cterm06        = "21"
  let g:base16_cterm06 = "21"
  let s:cterm09        = "16"
  let g:base16_cterm09 = "16"
  let s:cterm0F        = "17"
  let g:base16_cterm0F = "17"
else
  let s:cterm01        = "10"
  let g:base16_cterm01 = "10"
  let s:cterm02        = "11"
  let g:base16_cterm02 = "11"
  let s:cterm04        = "12"
  let g:base16_cterm04 = "12"
  let s:cterm06        = "13"
  let g:base16_cterm06 = "13"
  let s:cterm09        = "09"
  let g:base16_cterm09 = "09"
  let s:cterm0F        = "14"
  let g:base16_cterm0F = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#0f/14/19"
  let g:terminal_color_1 =  "#f0/71/78"
  let g:terminal_color_2 =  "#b8/cc/52"
  let g:terminal_color_3 =  "#f2/97/18"
  let g:terminal_color_4 =  "#36/a3/d9"
  let g:terminal_color_5 =  "#ff/ee/99"
  let g:terminal_color_6 =  "#95/e6/cb"
  let g:terminal_color_7 =  "#ff/ff/ff"
  let g:terminal_color_8 =  "#3e/4b/59"
  let g:terminal_color_9 =  "#ff/33/33"
  let g:terminal_color_10 = "#b8/cc/52"
  let g:terminal_color_11 = "#f2/97/18"
  let g:terminal_color_12 = "#36/a3/d9"
  let g:terminal_color_13 = "#ff/ee/99"
  let g:terminal_color_14 = "#95/e6/cb"
  let g:terminal_color_15 = "#5c/67/73"
  let g:terminal_color_background = "#E6/E1/CF"
  let g:terminal_color_foreground = g:terminal_color_0
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has('terminal')
  let g:terminal_ansi_colors = [
        \ "#0f1419",
        \ "#f07178",
        \ "#b8cc52",
        \ "#f29718",
        \ "#36a3d9",
        \ "#ffee99",
        \ "#95e6cb",
        \ "#ffffff",
        \ "#3e4b59",
        \ "#ff3333",
        \ "#b8cc52",
        \ "#f29718",
        \ "#36a3d9",
        \ "#ffee99",
        \ "#95e6cb",
        \ "#5c6773",
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-ayu-dark"

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
	let a:attr = get(a:, 1, "")
	let a:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "", "")
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Directory",     s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("Error",         s:gui00, s:gui08, s:cterm00, s:cterm08, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "", "")
call <sid>hi("Exception",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("FoldColumn",    s:gui0C, s:gui01, s:cterm0C, s:cterm01, "", "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("IncSearch",     s:gui00, s:gui0E, s:cterm00, s:cterm0E, "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("MatchParen",    s:gui05, s:gui00, s:cterm05, s:cterm00, "undercurl", "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Question",      s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Search",        s:gui00, s:gui0E, s:cterm00, s:cterm0E,  "", "")
call <sid>hi("Substitute",    s:gui01, s:gui0A, s:cterm01, s:cterm0A, "none", "")
call <sid>hi("SpecialKey",    s:gui02, "", s:cterm02, "", "", "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm08, "", "undercurl", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm02, "", "")
call <sid>hi("VisualNOS",     s:gui02, "", s:cterm02, "", "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("WildMenu",      s:gui05, s:gui03, s:cterm05, s:cterm03, "", "")
call <sid>hi("Title",         s:gui09, "", s:cterm09, "", "none", "")
call <sid>hi("Conceal",       "", s:gui01, "", s:cterm01, "", "")
call <sid>hi("Cursor",        "", s:gui01, "", s:cterm01, "", "")
call <sid>hi("NonText",       s:gui04, "", s:cterm04, "", "", "")
call <sid>hi("LineNr",        s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("SignColumn",    s:gui00, s:gui0E, s:cterm00, s:cterm0E, "", "")
call <sid>hi("StatusLine",    s:gui05, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("VertSplit",     s:gui02, s:gui02, s:cterm02, s:cterm02, "none", "")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLineNr",  s:gui04, s:gui01, s:cterm04, s:cterm01, "", "")
call <sid>hi("QuickFixLine",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("PMenu",         s:gui05, s:gui02, s:cterm05, s:cterm02, "none", "")
call <sid>hi("PMenuSel",      s:gui01, s:gui05, s:cterm01, s:cterm05, "", "")
call <sid>hi("TabLine",       s:gui05, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("TabLineFill",   s:gui05, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Character",    s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Comment",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("Conditional",  s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Constant",     s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("Define",       s:gui0A, "", s:cterm0A, "", "none", "")
call <sid>hi("Delimiter",    s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Float",        s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Function",     s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Identifier",   s:gui0E, "", s:cterm0E, "", "none", "")
call <sid>hi("Include",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Keyword",      s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Label",        s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Number",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Operator",     s:gui0F, "", s:cterm0F, "", "none", "")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Repeat",       s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Special",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("SpecialChar",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Statement",    s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("StorageClass", s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("String",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Structure",    s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Tag",          s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Todo",         s:gui08, s:gui00, s:cterm08, s:cterm00, "", "")
call <sid>hi("Type",         s:gui0D, "", s:cterm0D, "", "none", "")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "", "")

" " C highlighting
call <sid>hi("cOperator",   s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("cPreCondit",  s:gui0C, "", s:cterm0C, "", "", "")

" " C# highlighting
call <sid>hi("csClass",                 s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("csAttribute",             s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("csModifier",              s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("csType",                  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("csContextualStatement",   s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("csNewDecleration",        s:gui0A, "", s:cterm0A, "", "", "")

" " CSS highlighting
call <sid>hi("cssBraces",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("cssClassName",   s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:cterm0C, "", "", "")

" " Diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui01,  s:cterm0B, s:cterm01, "", "")
call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm03, s:cterm01, "", "")
call <sid>hi("DiffDelete",   s:gui08, s:gui01,  s:cterm08, s:cterm01, "", "")
call <sid>hi("DiffText",     s:gui0D, s:gui01,  s:cterm0D, s:cterm01, "", "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00,  s:cterm0D, s:cterm00, "", "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")

" " Git highlighting
call <sid>hi("gitcommitOverflow",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("gitcommitSummary",        s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("gitcommitComment",        s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitUntracked",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitSelected",       s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitHeader",         s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitBranch",         s:gui09, "", s:cterm09, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:gui0B, "", s:cterm0B, "", "bold", "")

" " GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")
call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui01, s:cterm0E, s:cterm01, "", "")

" " HTML highlighting
call <sid>hi("htmlBold",    s:gui0E, "", s:cterm0E, "", "bold", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "italic", "")
call <sid>hi("htmlEndTag",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("htmlTag",     s:gui0A, "", s:cterm0A, "", "", "")
hi link xmlEndTag xmlTag

" " JavaScript highlighting
call <sid>hi("javaScript",        s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptNumber",  s:gui0B, "", s:cterm0B, "", "", "")
" call <sid>hi("JSNumber",          s:gui0B, "", s:cterm0B, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsNull",              s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("jsStorageClass",      s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("jsThis",              s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsClassDefinition",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsFunction",          s:gui0F, "", s:cterm0A, "", "", "")
call <sid>hi("jsFuncName",          s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("jsFuncCall",          s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("jsClassFuncName",     s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("jsClassMethodType",   s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("jsRegexpString",      s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("jsGlobalObjects",     s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsGlobalNodeObjects", s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsExceptions",        s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("jsBuiltins",          s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsSwitchCase",        s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsArrowFunction",     s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("jsReturn",            s:gui0F, "", s:cterm0F, "", "", "")

" " Mail highlighting
call <sid>hi("mailQuoted1",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("mailQuoted2",  s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("mailQuoted3",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("mailQuoted4",  s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("mailQuoted5",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("mailQuoted6",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("mailURL",      s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("mailEmail",    s:gui0D, "", s:cterm0D, "", "", "")

" " Markdown highlighting
call <sid>hi("markdownCode",              s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("markdownError",             s:gui05, s:gui00, s:cterm05, s:cterm00, "", "")
call <sid>hi("markdownCodeBlock",         s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "", "")

" " NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("NERDTreeFlags",  s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:gui0E, "", s:cterm0E, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpMethodsVar",      s:gui0C, "", s:cterm0C, "", "", "")

" " Python highlighting
call <sid>hi("pythonOperator",  s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("pythonRepeat",    s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("pythonInclude",   s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("pythonStatement", s:gui0E, "", s:cterm0E, "", "", "")

" " Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("rubyConstant",                s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("rubySymbol",                  s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("rubyStringDelimiter",         s:gui0A, "", s:cterm0A, "", "", "")

" " SASS highlighting
call <sid>hi("sassId",           s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassClass",        s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassidChar",       s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("sassClassChar",    s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("sassAmpersand",    s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("sassInclude",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("sassMixing",       s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassMixinName",    s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassControl",      s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("sassControlLine",  s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("sassFunctionDecl", s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("sassFunctionName", s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassReturn",       s:gui09, "", s:cterm09, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")

" " Spelling highlighting
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi clear SpellRare
call <sid>hi("SpellBad", s:gui08, "", s:cterm08, "", "undercurl,bold", "")
call <sid>hi("SpellLocal", "", s:gui08, "", s:cterm08, "undercurl,bold", "")
call <sid>hi("SpellCap", s:gui08, "", s:cterm08, "", "undercurl,bold", "")
call <sid>hi("SpellRare", s:gui08, "", s:cterm08, "", "undercurl,bold", "")

" " Startify highlighting
call <sid>hi("StartifyBracket",  s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifyFile",     s:gui07, "", s:cterm07, "", "", "")
call <sid>hi("StartifyFooter",   s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifyHeader",   s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("StartifyNumber",   s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("StartifyPath",     s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifySection",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("StartifySelect",   s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("StartifySlash",    s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifySpecial",  s:gui03, "", s:cterm03, "", "", "")

" " Java highlighting
call <sid>hi("javaOperator",     s:gui0F, "", s:cterm0F, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
