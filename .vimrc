syntax enable
set relativenumber
set number
set ignorecase
set smartcase
set noswapfile
set backspace=2
set shortmess-=S
let mapleader = ","

colorscheme gruvbox

if $TERM == "xterm-256color"
  set t_Co=256
endif

" Vim plug initialization
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
"Plug 'vim-syntastic/syntastic'
"Plug 'davidhalter/jedi-vim'
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

"################
noremap ,' viwc''<Esc><left>p<right>i
noremap ," viwc""<Esc><left>p<right>i
vmap ," viwc""<Esc><left>p<right>i
"################

" Custom settings
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

set updatetime=100
" Search
set hlsearch
set incsearch
" status bar
set laststatus=2

highlight ColorColumn ctermbg=236
set colorcolumn=80

set nowrap
set autoread                                                                                                                                                                                    
set timeout ttimeoutlen=50
set directory^=$HOME/.vim/tmp//
map <C-a> <esc>ggVG<CR>

highlight GitGutterAdd    ctermfg=10 ctermbg=235 cterm=bold
highlight GitGutterChange ctermfg=11 ctermbg=235 cterm=bold
highlight GitGutterDelete ctermfg=9  ctermbg=235 cterm=bold

set cursorline 
highlight CursorLine   cterm=NONE ctermbg=238 ctermfg=NONE
highlight CursorColumn cterm=NONE ctermbg=238 ctermfg=NONE

set wildmenu

set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico,*.cache,*.min.js
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/**
set wildignore+=bower_components/**
set wildignore+=*/tmp/*
set wildignore+=*/log/*

nnoremap ,o <Esc>:tabnew \| e **/*

nnoremap ,2 @=':e **/*'<CR>
nnoremap ,3 @=':!open %:p:h'<CR>
nnoremap ,4 @=':set syntax='<CR>
nnoremap ,5 @='mmgg=G`m'<CR>
nnoremap ,6 @=':e %:p:h'<CR>
nnoremap ,7 @=':%!python -m json.tool'<CR>
nnoremap ,8 @=':source ~/.vimrc'<CR>
nmap cp :let @" = expand("%")<cr>

nmap =j2 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)" <CR>
nmap =j4 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=4)" <CR>

set linespace=6

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

let g:indentLine_color_term = 238
set conceallevel=2
let g:indentLine_conceallevel=2
let g:indentLine_char = '|'

:set switchbuf+=usetab,newtab

nnoremap ,ajax :-1read ~/.vim/snippets/ajax<CR>1jf'a
nnoremap ,div :-1read ~/.vim/snippets/div<CR>f>a
nnoremap ,t :-1read ~/.vim/snippets/tag-html<CR>a
nnoremap ,def :-1read ~/.vim/snippets/ruby-method<CR>A
nnoremap ,gd :! clear && git diff --word-diff %:p:h<cr>
nnoremap ,diff :! clear && git diff --word-diff<cr>
nnoremap ,f :vimgrep /<C-r><C-w>\c/ ./**<left><left>

nnoremap <leader>l :call QuickfixToggle()<cr>

set wildcharm=<C-z>
"nnoremap ,gf :tabnew **/*<C-r><C-w><C-z>
nnoremap ,gf :!~/.vim/copy.py <C-r><C-w><CR>:tabnew **/*<C-R>+


map <F9> :execute "vimgrep /" .expand("<cword>") . "/j **" <Bar> cw<CR>
map <F10> :%s///gc<left><left><left><left>
com! FormatJSON %!python -m json.tool 
nnoremap ,d :tabe %:p:h <Bar> cw<CR>

nnoremap ,w :vimgrep /\c/ ./**<left><left><left><left><left><left><left><left>

command! -nargs=1 FF vimgrep /<args>\c/ ./**

com! QuitSession mks! ~/.vim/session.vim | qa!
com! OpenSession source ~/.vim/session.vim


autocmd BufRead,FileChangedShell * syn match parens /[||()\[\]{}]/ | hi parens ctermfg=220

vmap '' :w !pbcopy<CR><CR>


nnoremap <leader>m :Lexplore %:p:h<BAR>:vertical resize -60<CR>
nnoremap <leader>n :Lexplore<CR>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
    else
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

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


noremap <silent> <C-S-Left> :vertical resize +10<CR>
noremap <silent> <C-S-Right> :vertical resize -10<CR>
noremap <silent> <C-S-Up> :resize +5<CR>
noremap <silent> <C-S-Down> :resize -5<CR>

nnoremap ,v <Esc>:vsp **/*
nnoremap ,h <Esc>:sp **/*

vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

command! -nargs=+ R execute '%s/\<' . split(<q-args>, ' ')[0] . '\>/' . split(<q-args>, ' ')[1] . '/g'

set statusline=\ %F%m%r%h%w\ %([%l,%v][%p%%]\ %)
hi StatusLine ctermbg=0 ctermfg=7

noremap <S-z> {
noremap <S-x> }
noremap <space> :b <right>
noremap <tab> <C-W><C-W>
