syntax enable
set number
set t_Co=256
set ignorecase
set smartcase

"colorscheme molokai
colorscheme molokai
colorscheme onehalfdark

" Vim plug initialization
call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'Yggdroot/indentLine'

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

" Multiple cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:indentLine_color_term = 238

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
set wildignore+=node_modules/*,bower_components/*
"set wildmode=longest:full,full

nnoremap <F2> @=':e **/*'<CR>
nnoremap <F3> @=':!nautilus %:p:h'<CR>
nnoremap <F4> @=':set syntax='<CR>
nnoremap <F5> @='mmgg=G`m'<CR>
nnoremap <F6> @=':e %:p:h'<CR>
nnoremap <F7> @=':%!python -m json.tool'<CR>
nnoremap <F8> @=':source ~/.vimrc'<CR>
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

autocmd BufRead,FileChangedShell * syn match parens /[||()\[\]{}]/ | hi parens ctermfg=221

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
nnoremap ,w :vimgrep /\c/ ./**<left><left><left><left><left><left><left><left> 
nnoremap ,d :tabe %:p:h <Bar> cw<CR>

nnoremap ,k :call ThisIsATest() <CR><ESC>a

func! ThisIsATest()
  exe "normal! imelvin"
endfunc

