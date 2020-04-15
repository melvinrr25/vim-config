highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'vsc'

"highlight  Normal        ctermfg=251   ctermbg=235 cterm=NONE
highlight  Normal        ctermfg=15    ctermbg=235  cterm=BOLD 
highlight  Cursor        ctermfg=16    ctermbg=226
highlight  DiffAdd       ctermfg=16    ctermbg=223
highlight  DiffChange    ctermfg=16    ctermbg=117
highlight  DiffDelete    ctermfg=16    ctermbg=243
highlight  DiffText      ctermfg=16    ctermbg=205
highlight  ErrorMsg      ctermfg=231   ctermbg=196
highlight  FoldColumn    ctermfg=180   ctermbg=239
highlight  Folded        ctermfg=116   ctermbg=239
highlight  IncSearch     ctermfg=159   ctermbg=26
highlight  LineNr        ctermfg=244
highlight  MatchParen    ctermfg=51
highlight  ModeMsg       ctermfg=117
highlight  MoreMsg       ctermfg=29
highlight  NonText       ctermfg=51    ctermbg=236
highlight  Pmenu         ctermfg=255   ctermbg=232
highlight  PmenuSel      ctermfg=61    ctermbg=250
highlight  Question      ctermfg=48
highlight  Search        ctermfg=252   ctermbg=61
highlight  SpecialKey    ctermfg=240
highlight  StatusLine    ctermfg=255   ctermbg=0
highlight  StatusLineNC  ctermfg=250   ctermbg=241
highlight  Title         ctermfg=167
highlight  VertSplit     ctermfg=241   ctermbg=241
highlight  Visual        ctermfg=NONE  ctermbg=238
highlight  WarningMsg    ctermfg=210
highlight  WildMenu      ctermfg=11    ctermbg=0    
highlight  colorcolumn   ctermbg=240
highlight  TabLineFill   ctermfg=240   ctermbg=40
highlight  TabLine       ctermfg=234   ctermbg=240
highlight  TabLineSel    ctermfg=255   ctermbg=240

set        cursorline
highlight  CursorLine        ctermbg=238  ctermfg=NONE
highlight  CursorColumn      ctermbg=238  ctermfg=NONE


" 114: material green

" Comment -> comments
highlight Comment ctermfg=65 

" Constant -> string content + symbols + true/false & more
highlight Constant ctermfg=69 cterm=NONE 

" Indentifier -> Parameter in the block - variable Ruby
highlight Identifier ctermfg=204 cterm=NONE

" Function -> methods name -> sort of red
highlight Function ctermfg=203 cterm=NONE

" Statement -> if/unless/end return
highlight Statement ctermfg=69 cterm=NONE

" Preproc -> def/end class words
highlight PreProc ctermfg=141 cterm=NONE

" Special -> Quotes arround the String 
highlight Special ctermfg=184 cterm=NONE 

highlight Ignore ctermfg=241 cterm=NONE 

highlight Todo ctermfg=114 cterm=NONE

" Type Class/Modules names
highlight Type ctermfg=141 cterm=NONE

highlight Number ctermfg=221 cterm=NONE

highlight String ctermfg=113 cterm=NONE
"highlight String ctermfg=173 cterm=NONE

highlight Boolean ctermfg=141 cterm=NONE

highlight Operator ctermfg=72 cterm=NONE

highlight Character ctermfg=11 cterm=NONE

highlight Tag ctermfg=11 cterm=NONE



