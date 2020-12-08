hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'github'

"hi  Normal        ctermfg=251   ctermbg=235 cterm=NONE
"hi  Normal        ctermfg=117    ctermbg=235
hi  Normal        ctermfg=7     ctermbg=234
hi  Cursor        ctermfg=16    ctermbg=226
hi  DiffAdd       ctermfg=0     ctermbg=148
hi  DiffChange    ctermfg=0     ctermbg=39
hi  DiffDelete    ctermfg=0     ctermbg=167
hi  DiffText      ctermfg=0     ctermbg=220
hi  ErrorMsg      ctermfg=231   ctermbg=196
hi  FoldColumn    ctermfg=180   ctermbg=239
hi  Folded        ctermfg=116   ctermbg=239
hi  IncSearch     ctermfg=159   ctermbg=26
hi  LineNr        ctermfg=244
hi  MatchParen    ctermfg=51
hi  ModeMsg       ctermfg=117
hi  MoreMsg       ctermfg=29
hi  NonText       ctermfg=51    ctermbg=236
hi  Pmenu         ctermfg=255   ctermbg=232
hi  PmenuSel      ctermfg=61    ctermbg=250
hi  Question      ctermfg=48
hi  Search        ctermfg=252   ctermbg=61
hi  SpecialKey    ctermfg=240
hi  StatusLine    ctermfg=255   ctermbg=0
hi  StatusLineNC  ctermfg=250   ctermbg=241
hi  Title         ctermfg=167
hi  VertSplit     ctermfg=241   ctermbg=241
hi  Visual        ctermfg=NONE  ctermbg=238
hi  WarningMsg    ctermfg=210
hi  WildMenu      ctermfg=11    ctermbg=0
hi  colorcolumn   ctermbg=240
hi  TabLineFill   ctermfg=240   ctermbg=40
hi  TabLine       ctermfg=234   ctermbg=240
hi  TabLineSel    ctermfg=255   ctermbg=240

set        cursorline
hi  CursorLine        ctermbg=238  ctermfg=NONE
hi  CursorColumn      ctermbg=238  ctermfg=NONE

" Comment -> comments
hi Comment ctermfg=243

" Constant -> string content + symbols + true/false & more
hi Constant ctermfg=176 cterm=NONE
" Indentifier -> Parameter in the block - variable Ruby
"hi Identifier ctermfg=204 cterm=NONE "red/pink
hi Identifier ctermfg=203 cterm=NONE

" Function -> methods name -> sort of red
hi Function ctermfg=210 cterm=NONE

" Statement -> if/unless/end return
hi Statement ctermfg=176 cterm=NONE

" Preproc -> def/end class words
hi PreProc ctermfg=176 cterm=NONE

" Special -> Quotes arround the String
hi Special ctermfg=150 cterm=NONE

hi Ignore ctermfg=241 cterm=NONE

hi Todo ctermfg=114 cterm=NONE

" Type Class/Modules names
hi Type ctermfg=221 cterm=NONE

hi Number ctermfg=203 cterm=NONE

hi String ctermfg=150 cterm=NONE

hi Boolean ctermfg=141 cterm=NONE

hi Operator ctermfg=197 cterm=NONE

hi Character ctermfg=11 cterm=NONE

hi Tag ctermfg=11 cterm=NONE
