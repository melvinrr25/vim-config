hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'vsc'

hi  Normal        ctermfg=254   ctermbg=234
hi  Cursor        ctermfg=16    ctermbg=226
hi  LineNr        ctermfg=244

set        cursorline
hi  CursorLine        ctermbg=238  ctermfg=NONE
hi  CursorColumn      ctermbg=238  ctermfg=NONE
" Comment -> comments
hi Comment ctermfg=244
" Constant -> string content + symbols + true/false & more
hi Constant ctermfg=73 cterm=NONE 
" Indentifier -> Parameter in the block - variable Ruby
hi Identifier ctermfg=183 cterm=NONE
" Function -> methods name -> sort of red
hi Function ctermfg=221 cterm=NONE
" Statement -> if/unless/end return
hi Statement ctermfg=173 cterm=NONE
" Preproc -> def/end class words
hi PreProc ctermfg=208 cterm=NONE
" Special -> Quotes arround the String 
hi Special ctermfg=22 cterm=NONE 

hi String ctermfg=107 cterm=NONE
hi Ignore ctermfg=9 cterm=NONE 
hi Todo ctermfg=75 cterm=NONE
" Type Class/Modules names
hi Type ctermfg=167 cterm=NONE
hi Number ctermfg=107 cterm=NONE
hi Boolean ctermfg=9 cterm=NONE
hi Operator ctermfg=9 cterm=NONE
hi Character ctermfg=9 cterm=NONE
hi Tag ctermfg=9 cterm=NONE
