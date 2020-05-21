highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'vsc'

"highlight  Normal        ctermfg=71    ctermbg= 234
highlight  Normal        ctermfg=252    ctermbg=236 cterm=bold
highlight  Cursor        ctermfg=16    ctermbg=226 cterm=bold
highlight  DiffAdd       ctermfg=16    ctermbg=223 cterm=bold
highlight  DiffChange    ctermfg=16    ctermbg=117 cterm=bold
highlight  DiffDelete    ctermfg=16    ctermbg=243 cterm=bold
highlight  DiffText      ctermfg=16    ctermbg=205 cterm=bold
highlight  ErrorMsg      ctermfg=231   ctermbg=196 cterm=bold
highlight  FoldColumn    ctermfg=180   ctermbg=239 cterm=bold
highlight  Folded        ctermfg=116   ctermbg=239 cterm=bold
highlight  IncSearch     ctermfg=159   ctermbg=26 cterm=bold
highlight  LineNr        ctermfg=244 cterm=bold
highlight  MatchParen    ctermfg=51 cterm=bold
highlight  ModeMsg       ctermfg=117 cterm=bold
highlight  MoreMsg       ctermfg=29 cterm=bold
highlight  NonText       ctermfg=51  cterm=bold    ctermbg=236
highlight  Pmenu         ctermfg=255  cterm=bold   ctermbg=232
highlight  PmenuSel      ctermfg=61    cterm=bold  ctermbg=250
highlight  Question      ctermfg=216 cterm=bold
highlight  Search        ctermfg=252  cterm=bold   ctermbg=61
highlight  SpecialKey    ctermfg=240 cterm=bold
highlight  StatusLine    ctermfg=255  cterm=bold   ctermbg=0
highlight  StatusLineNC  ctermfg=250   cterm=bold  ctermbg=241
highlight  Title         ctermfg=167 cterm=bold
highlight  VertSplit     ctermfg=241  cterm=bold   ctermbg=241
highlight  Visual        ctermfg=NONE  cterm=bold  ctermbg=238
highlight  WarningMsg    ctermfg=210 cterm=bold
highlight  WildMenu      ctermfg=11   cterm=bold   ctermbg=0    
highlight  colorcolumn   ctermbg=240 cterm=bold
highlight  TabLineFill   ctermfg=240  cterm=bold   ctermbg=40
highlight  TabLine       ctermfg=234   cterm=bold  ctermbg=240
highlight  TabLineSel    ctermfg=255    cterm=bold ctermbg=240

set        cursorline
highlight  CursorLine        ctermbg=238 cterm=bold   ctermfg=NONE
highlight  CursorColumn      ctermbg=238  cterm=bold  ctermfg=NONE


" 114: material green

" Comment -> comments
highlight Comment ctermfg=242 cterm=bold

" Constant -> string content + symbols + true/false & more
highlight Constant ctermfg=117 cterm=NONE  cterm=bold

" Indentifier -> Parameter in the block - variable Ruby
highlight Identifier ctermfg=147 cterm=NONE cterm=bold

" Function -> methods name -> sort of red
highlight Function ctermfg=116 cterm=NONE cterm=bold

" Statement -> if/unless/end return
highlight Statement ctermfg=216 cterm=bold cterm=bold

" Preproc -> def/end class words
highlight PreProc ctermfg=216 cterm=bold cterm=bold

" Special -> Quotes arround the String 
highlight Special ctermfg=108 cterm=NONE  cterm=bold

highlight Ignore ctermfg=241 cterm=NONE  cterm=bold

highlight Todo ctermfg=114 cterm=NONE cterm=bold

" Type Class/Modules names
highlight Type ctermfg=217 cterm=NONE cterm=bold

highlight Number ctermfg=216 cterm=NONE cterm=bold

highlight String ctermfg=108 cterm=NONE cterm=bold

highlight Boolean ctermfg=73 cterm=NONE cterm=bold

highlight Operator ctermfg=216 cterm=NONE cterm=bold

highlight Character ctermfg=216 cterm=NONE cterm=bold

highlight Tag ctermfg=216 cterm=NONE cterm=bold
