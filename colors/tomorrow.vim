
hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'tomorrow'

hi  Normal        ctermfg=234     ctermbg=251
hi  Cursor        ctermfg=234    ctermbg=226
hi  DiffAdd       ctermfg=234     ctermbg=148
hi  DiffChange    ctermfg=234     ctermbg=39
hi  DiffDelete    ctermfg=234     ctermbg=167
hi  DiffText      ctermfg=234     ctermbg=2ck20
hi  ErrorMsg      ctermfg=234   ctermbg=196
hi  FoldColumn    ctermfg=234   ctermbg=239
hi  Folded        ctermfg=234   ctermbg=239
hi  IncSearch     ctermfg=234   ctermbg=26
hi  LineNr        ctermfg=234
hi  MatchParen    ctermfg=234
hi  ModeMsg       ctermfg=234
hi  MoreMsg       ctermfg=234
hi  NonText       ctermfg=234    ctermbg=236
hi  Pmenu         ctermfg=234   ctermbg=232
hi  PmenuSel      ctermfg=234    ctermbg=250
hi  Question      ctermfg=234
hi  Search        ctermfg=234   ctermbg=61
hi  SpecialKey    ctermfg=234
hi  StatusLine    ctermfg=234   ctermbg=0
hi  StatusLineNC  ctermfg=234   ctermbg=241
hi  Title         ctermfg=234
hi  VertSplit     ctermfg=234   ctermbg=241
hi  Visual        ctermfg=234  ctermbg=238
hi  WarningMsg    ctermfg=234
hi  WildMenu      ctermfg=234    ctermbg=0
hi  TabLineFill   ctermfg=9   ctermbg=232
hi  TabLine       ctermfg=9   ctermbg=232
hi  TabLineSel    ctermfg=220   ctermbg=232

set        cursorline
hi  CursorLine        ctermbg=238  ctermfg=234
hi  CursorColumn      ctermbg=238  ctermfg=234

" Comment -> comments
hi Comment ctermfg=241

" Constant -> string content + symbols + true/false & more
hi Constant ctermfg=22 cterm=NONE
" Indentifier -> Parameter in the block - variable Ruby
"hi Identifier ctermfg=234 cterm=NONE "red/pink
hi Identifier ctermfg=4 cterm=NONE

" Function -> methods name -> sort of red
hi Function ctermfg=55 cterm=NONE

" Statement -> if/unless/end return
hi Statement ctermfg=89 cterm=NONE

" Preproc -> def/end class words
hi PreProc ctermfg=22 cterm=NONE

" Special -> Quotes arround the String
hi Special ctermfg=23 cterm=NONE

hi Ignore ctermfg=234 cterm=NONE

hi Todo ctermfg=234 cterm=NONE

" Type Class/Modules names
hi Type ctermfg=234 cterm=NONE

hi Number ctermfg=234 cterm=NONE

hi String ctermfg=23 cterm=NONE

hi Boolean ctermfg=234 cterm=NONE

hi Operator ctermfg=234 cterm=NONE

hi Character ctermfg=234 cterm=NONE

hi Tag ctermfg=234 cterm=NONE
