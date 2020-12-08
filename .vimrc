syntax enable
set relativenumber
set noswapfile
set backspace=2
set number
set ignorecase
set smartcase
set shortmess-=S
set title
set showtabline=2
set hidden

let mapleader = ","
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 25

if $TERM == "xterm-256color"
  set t_Co=256
endif

" Vim plug initialization
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

set autoindent

let g:indentLine_conceallevel=2
let g:indentLine_char = '|'
set conceallevel=2

colorscheme github "railscasts
set background=dark
set cursorline 
highlight CursorLine   cterm=NONE ctermbg=238 ctermfg=NONE
highlight CursorColumn cterm=NONE ctermbg=238 ctermfg=NONE
hi StatusLine ctermbg=0 ctermfg=7
hi StatusLine ctermbg=232 ctermfg=220
autocmd VimEnter,BufWinEnter * syn match parens /[||()\[\]{}]/ | hi parens ctermfg=220
let g:indentLine_color_term = 239
set colorcolumn=80
highlight ColorColumn ctermbg=238
highlight Directory ctermfg=red

set statusline=\ %F%m%r%h%w\ %([%l,%v][%p%%]\ %)
set statusline+=lines:
set statusline+=%L
"set t_md= " Enables BOLD text
set runtimepath^=~/.vim/bundle/myplugin.vim

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
nnoremap ,s :%s/\<<C-R><C-w>\>/<C-R><C-w>

"################
noremap ,' viwc''<Esc><left>p<right>i
noremap ," viwc""<Esc><left>p<right>i
vmap ," viwc""<Esc><left>p<right>i
"################

set updatetime=100
" Search
set hlsearch
set incsearch
" status bar
set laststatus=2


set nowrap
set autoread                                                                                                                                                                                    
set timeout ttimeoutlen=50
set directory^=$HOME/.vim/tmp//
map <C-a> <esc>ggVG<CR>
noremap <c-s> <c-u>

highlight GitGutterAdd    ctermfg=10 ctermbg=235 cterm=bold
highlight GitGutterChange ctermfg=11 ctermbg=235 cterm=bold
highlight GitGutterDelete ctermfg=9  ctermbg=235 cterm=bold

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

set switchbuf+=usetab,newtab

nnoremap ,ajax :-1read ~/.vim/snippets/ajax<CR>1jf'a
nnoremap ,allstate :-1read ~/.vim/snippets/allstate<CR>
nnoremap ,div :-1read ~/.vim/snippets/div<CR><ESC>0v$=f>a
nnoremap ,t :-1read ~/.vim/snippets/tag-html<CR>a
nnoremap ,def :-1read ~/.vim/snippets/ruby-method<CR>A
nnoremap ,gd :! clear && git diff --word-diff %:p:h<cr>
nnoremap ,diff :! clear && git diff --word-diff<cr>
nnoremap ,gv <C-w>H
nnoremap ,gh <C-w>J

"nnoremap ,f :grep -R --exclude-dir={./log,./tmp} '<C-R><C-w>' ./**<left><left>
"vnoremap ,f :grep -R --exclude-dir={./log,./tmp} '<C-R>"' ./**
nnoremap ,f :grep <C-R><C-w>
"vnoremap ,f :grep -R --exclude-dir={./log,./tmp} '<C-R>"' ./**

nnoremap ,l :call QuickfixToggle()<cr>
com! Wrap call WrapToggle()
"melvimelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinmelvinn
set wildcharm=<C-z>
nnoremap ,gf :!~/.vim/copy.py <C-R><C-w><CR>:tabnew **/*<C-R>+
com! Ruboc :!~/.vim/rubo.py

com! FormatJSON %!python -m json.tool 
com! UnformatJSON %delete | 0put =json_encode(json_decode(@@))
nnoremap ,d :tabe %:p:h <Bar> cw<CR>

"nnoremap ,w :grep -R --exclude-dir={./log,./tmp} '' ./**<left><left><left><left><left><left>
nnoremap ,w :grep '' <left><left>

com! QuitSession mks! ~/.vim/session.vim | qa!
com! OpenSession source ~/.vim/session.vim

hi def link jsObjectKey Label

vmap '' :w !pbcopy<CR><CR>

nnoremap <leader>m :Lexplore %:p:h<CR>
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

let g:wrapped = 0

function! WrapToggle()
    if g:wrapped
        let g:wrapped = 0
        set nowrap
    else
        let g:wrapped = 1
        set wrap
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

noremap <space> :b <right>
noremap <C-S-h> :reg <CR>
noremap ( <C-W><C-W>

noremap -- zf
vnoremap // y/<C-R>"<CR>
noremap ++ za

nmap <S-z> <Plug>(GitGutterNextHunk)
nmap <S-x> <Plug>(GitGutterPrevHunk)
nmap ,, <Plug>(GitGutterPreviewHunk)

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END

noremap <silent> ,c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,u :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


noremap ,r :!clear && ruby %
noremap ,rc :!clear && ruby -wc %
noremap <C-S-f> :args `grep --exclude-dir={./log,./tmp} -lrw '' .`<left><left><left><left>
noremap ,do :silent argdo %s///ge <BAR> update <left><left><left><left><left><left><left><left><left><left><left><left><left><left>
noremap ,/ q/
noremap ,: q:
noremap ,q :qa!<CR>

func! Count()
  echon len(@") 
endfunc

command! CountChars call Count()

noremap ,bs :call ReMapper()<CR>

function! ReMapper()
  let @" = '\'
  echon 'Copied -> \'
endfunction

function! Diffnext()
  norm! ]c<Cr>
endfunction

function! Diffprev()
  norm! [c<Cr>
endfunction

command! Diffprev call Diffprev()
command! Diffnext call Diffnext()

noremap ,<RIGHT> :call Diffnext()<CR>
noremap ,<LEFT> :call Diffprev()<CR>

function! QuickFixOpenAll()
    if empty(getqflist())
        return
    endif
    let s:prev_val = ""
    for d in getqflist()
        let s:curr_val = bufname(d.bufnr)
        if (s:curr_val != s:prev_val)
            exec "tabe " . s:curr_val
        endif
        let s:prev_val = s:curr_val
    endfor
endfunction

command! QuickFixOpenAll call QuickFixOpenAll()

func! HtmlTag(tag)
  let @" = '<'. a:tag .' class=""></'. a:tag .'>'
endfun

func! AwesomeFinder(words)
  let s:commands = split(a:words, ' ')
  let s:userWords = s:commands[0]

  try
    let s:flag = s:commands[1]
  catch
    let s:flag = ''
  endtry

  if s:userWords =~ "|"
    let s:list = split(s:userWords, '|') 
    let s:formattedList = []

    for entry in s:list 
      if s:flag == '--all'
        let s:x = entry
      else
        let s:x = '\<'.entry.'\>'
      endif
      call add(s:formattedList, s:x)
    endfor

    let s:res = join(s:formattedList, '\|')

    let @/ = s:res
    return
  endif

  if s:userWords =~ "&"
    let s:list = split(s:userWords, '&') 
    let s:formattedList = []

    for entry in s:list 
      let s:x = '.*'.entry
      call add(s:formattedList, s:x)
    endfor

    let s:res = join(s:formattedList, '\&')
    let @/ = s:res
    return
  endif

  let @/ = s:userWords
endfun

command! -nargs=1 Find call AwesomeFinder(<f-args>) | normal n

command! -nargs=1 Html call HtmlTag(<f-args>) | normal p0f>OC==

noremap ,gb  :execute "!clear && git blame " . expand('%') . " -L" . line(".") .",". (line(".") + 10)<CR>
 
noremap ,try :call RailsTry()<CR><bar>C<ESC>"xp

func! RailsTry()
  let s:line = getline('.')
  let s:list = split(s:line, '\.')

  let s:newList = []
  let s:first = 0

  for entry in s:list
    
    if s:first == 0
      let s:x = entry
      let s:first = 1
    else
      let s:x = entry . ')'
    endif

    call add(s:newList, s:x)
  endfor

  let s:res = join(s:newList, '.try(:')
  let @x = s:res
endfun

" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf(' +%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" The Silver Searcher
if executable('rg')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
