syntax enable
set number
set t_Co=256
set ignorecase
set smartcase

colorscheme onehalfdark
"colorscheme light
colorscheme molokai
"colorscheme vsc

" Vim plug initialization
call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'matze/vim-move'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'Yggdroot/indentLine'
Plug 'sainnhe/sonokai'

call plug#end()

nnoremap <C-z> :tabprevious<CR>
nnoremap <C-x> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

inoremap <C-z> <Esc>:tabprevious<CR>i
inoremap <C-x> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
nnoremap ,s :%s/\<<C-r><C-w>\>/

" Custom settings
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

set updatetime=100
" Search
set hlsearch
set incsearch
" status bar
set laststatus=2

highlight ColorColumn ctermbg=black
set colorcolumn=80

set nowrap
set autoread                                                                                                                                                                                    

let g:indentLine_color_term = 238

set conceallevel=1
let g:indentLine_conceallevel=1

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
set directory^=$HOME/.vim/tmp//
map <C-a> <esc>ggVG<CR>

nnoremap <silent><space> :ls<CR>


highlight GitGutterAdd    ctermfg=10 ctermbg=235 cterm=bold
highlight GitGutterChange ctermfg=11 ctermbg=235 cterm=bold
highlight GitGutterDelete ctermfg=9  ctermbg=235 cterm=bold

set cursorline 
highlight CursorLine   cterm=NONE ctermbg=238 ctermfg=NONE
highlight CursorColumn cterm=NONE ctermbg=238 ctermfg=NONE


set wildmenu
"set autochdir

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*,tmp/
"set wildmode=longest:full,full

nnoremap ,o <Esc>:tabnew \| e **/*

nnoremap 2 @=':e **/*'<CR>
nnoremap 3 @=':!open %:p:h'<CR>
nnoremap 4 @=':set syntax='<CR>
nnoremap 5 @='mmgg=G`m'<CR>
nnoremap 6 @=':e %:p:h'<CR>
nnoremap 7 @=':%!python -m json.tool'<CR>
nnoremap 8 @=':source ~/.vimrc'<CR>
nmap cp :let @" = expand("%")<cr>

nmap =j2 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)" <CR>
nmap =j4 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=4)" <CR>

set linespace=6

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

:set switchbuf+=usetab,newtab
let mapleader = ','


nnoremap ,html :-1read ~/.vim/snippets/basic<CR>8ja
nnoremap ,ajax :-1read ~/.vim/snippets/ajax<CR>1jf'a
nnoremap ,div :-1read ~/.vim/snippets/div<CR>f>a
nnoremap ,each :-1read ~/.vim/snippets/loop-haml<CR>o
nnoremap ,t :-1read ~/.vim/snippets/tag-html<CR>a
nnoremap ,def :-1read ~/.vim/snippets/ruby-method<CR>A
nnoremap ,gd :! clear && git diff --word-diff %:p:h<cr>
nnoremap ,diff :! clear && git diff --word-diff<cr>
nnoremap ,p :set paste<cr>
nnoremap ,np :set nopaste<cr>
"nnoremap ,f :vimgrep /\c/ ./**
nnoremap ,f :vimgrep /<C-r><C-w>\c/ ./**
map <F9> :execute "vimgrep /" .expand("<cword>") . "/j **" <Bar> cw<CR>
map <F10> :%s///gc<left><left><left><left>
com! FormatJSON %!python -m json.tool
nnoremap ,w :vimgrep /\c/ ./**<left><left><left><left><left><left><left><left> 
nnoremap ,d :tabe %:p:h <Bar> cw<CR>

highlight Type ctermfg=147 cterm=NONE
autocmd BufRead,FileChangedShell * syn match parens /[||()\[\]{}]/ | hi parens ctermfg=220

vmap '' :w !pbcopy<CR><CR>

" XML formatter
function! DoFormatXML() range
	" Save the file type
	let l:origft = &ft

	" Clean the file type
	set ft=

	" Add fake initial tag (so we can process multiple top-level elements)
	exe ":let l:beforeFirstLine=" . a:firstline . "-1"
	if l:beforeFirstLine < 0
		let l:beforeFirstLine=0
	endif
	exe a:lastline . "put ='</PrettyXML>'"
	exe l:beforeFirstLine . "put ='<PrettyXML>'"
	exe ":let l:newLastLine=" . a:lastline . "+2"
	if l:newLastLine > line('$')
		let l:newLastLine=line('$')
	endif

	" Remove XML header
	exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

	" Recalculate last line of the edited code
	let l:newLastLine=search('</PrettyXML>')

	" Execute external formatter
	exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"

	" Recalculate first and last lines of the edited code
	let l:newFirstLine=search('<PrettyXML>')
	let l:newLastLine=search('</PrettyXML>')
	
	" Get inner range
	let l:innerFirstLine=l:newFirstLine+1
	let l:innerLastLine=l:newLastLine-1

	" Remove extra unnecessary indentation
	exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

	" Remove fake tag
	exe l:newLastLine . "d"
	exe l:newFirstLine . "d"

	" Put the cursor at the first line of the edited code
	exe ":" . l:newFirstLine

	" Restore the file type
	exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()

nmap <silent> <leader>x :%FormatXML<CR>
vmap <silent> <leader>x :FormatXML<CR>
