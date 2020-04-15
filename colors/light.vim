highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'vsc'

"highlight  Normal        ctermfg=15    ctermbg=235  cterm=BOLD 
highlight  Normal        ctermfg=16    ctermbg=15 
highlight  Cursor        ctermfg=15    ctermbg=15
highlight  DiffAdd       ctermfg=16    ctermbg=223
highlight  DiffChange    ctermfg=16    ctermbg=117
highlight  DiffDelete    ctermfg=16    ctermbg=243
highlight  DiffText      ctermfg=16    ctermbg=205
highlight  ErrorMsg      ctermfg=16   ctermbg=196
highlight  FoldColumn    ctermfg=16   ctermbg=239
highlight  Folded        ctermfg=16   ctermbg=239
highlight  IncSearch     ctermfg=16   ctermbg=26
highlight  LineNr        ctermfg=16
highlight  MatchParen    ctermfg=16
highlight  ModeMsg       ctermfg=16
highlight  MoreMsg       ctermfg=16
highlight  NonText       ctermfg=16    ctermbg=236
highlight  Pmenu         ctermfg=16   ctermbg=232
highlight  PmenuSel      ctermfg=16    ctermbg=250
highlight  Question      ctermfg=16
highlight  Search        ctermfg=16   ctermbg=61
highlight  SpecialKey    ctermfg=16
highlight  StatusLine    ctermfg=16   ctermbg=120
highlight  StatusLineNC  ctermfg=16   ctermbg=241
highlight  Title         ctermfg=16
highlight  VertSplit     ctermfg=16   ctermbg=241
highlight  Visual        ctermfg=16  ctermbg=238
highlight  WarningMsg    ctermfg=16
highlight  WildMenu      ctermfg=16    ctermbg=0    
highlight  colorcolumn   ctermbg=16
highlight  TabLineFill   ctermfg=16   ctermbg=40
highlight  TabLine       ctermfg=16   ctermbg=240
highlight  TabLineSel    ctermfg=16   ctermbg=240

set        cursorline
highlight  CursorLine        ctermbg=247 ctermfg=0
highlight  CursorColumn      ctermbg=247   ctermfg=0


" 114: material green

" Comment -> comments
highlight Comment ctermfg=250

" Constant -> string content + symbols + true/false & more
highlight Constant ctermfg=202 cterm=NONE 

" Indentifier -> Parameter in the block - variable Ruby
highlight Identifier ctermfg=240 cterm=NONE

" Function -> methods name -> sort of red
highlight Function ctermfg=125 cterm=NONE

" Statement -> if/unless/end return
highlight Statement ctermfg=25 cterm=NONE

" Preproc -> def/end class words
highlight PreProc ctermfg=62 cterm=NONE

" Special -> Quotes arround the String 
highlight Special ctermfg=16 cterm=NONE 

highlight Ignore ctermfg=16 cterm=NONE 

highlight Todo ctermfg=16 cterm=NONE

" Type Class/Modules names
highlight Type ctermfg=25 cterm=NONE

highlight Number ctermfg=196 cterm=NONE

highlight String ctermfg=100 cterm=NONE
"highlight String ctermfg=173 cterm=NONE

highlight Boolean ctermfg=16 cterm=NONE

highlight Operator ctermfg=16 cterm=NONE

highlight Character ctermfg=16 cterm=NONE

highlight Tag ctermfg=16 cterm=NONE

