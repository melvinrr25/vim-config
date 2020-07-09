let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <S-Down> :m+
inoremap <S-Up> :m-2
inoremap <C-T> :tabnew
inoremap <C-X> :tabnexti
inoremap <C-Z> :tabpreviousi
map! <D-v> *
map  ggVG
noremap  :args `grep --exclude-dir={./log,./tmp} -lrw '' .`<Left><Left><Left><Left>
noremap  :reg 
noremap  
nnoremap  :tabnew
nnoremap  :tabnext
nnoremap  :tabprevious
noremap   :b <Right>
vmap '' :w !pbcopy
noremap ( 
noremap ++ za
noremap ,<Left> :call Diffprev()
noremap ,<Right> :call Diffnext()
noremap ,ç :call ReMapper()
noremap ,q :qa!
noremap ,: q:
noremap ,/ q/
noremap ,do :silent argdo %s///ge | update <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
noremap ,r :!clear && ruby %
nmap ,- <Plug>(GitGutterUndoHunk)
nmap ,+ <Plug>(GitGutterStageHunk)
nmap ,, <Plug>(GitGutterPreviewHunk)
nnoremap ,h :sp **/*
nnoremap ,v :vsp **/*
vmap <silent> ,x :FormatXML
nmap <silent> ,x :%FormatXML
nnoremap ,n :Lexplore
nnoremap ,m :Lexplore %:p:h
nnoremap ,w :grep -R --exclude-dir={./log,./tmp} '' ./**<Left><Left><Left><Left><Left><Left>
nnoremap ,d :tabe %:p:h | cw
nnoremap ,gf :!~/.vim/copy.py :tabnew **/*+
nnoremap ,l :call QuickfixToggle()
vnoremap ,f y:grep -R --exclude-dir={./log,./tmp} '"' ./**
nnoremap ,f :grep -R --exclude-dir={./log,./tmp} '' ./**<Left><Left>
nnoremap ,gh J
nnoremap ,gv H
nnoremap ,diff :! clear && git diff --word-diff
nnoremap ,gd :! clear && git diff --word-diff %:p:h
nnoremap ,def :-1read ~/.vim/snippets/ruby-methodA
nnoremap ,t :-1read ~/.vim/snippets/tag-htmla
nnoremap ,div :-1read ~/.vim/snippets/divf>a
nnoremap ,ajax :-1read ~/.vim/snippets/ajax1jf'a
nnoremap ,8 @=':source ~/.vimrc'
nnoremap ,7 @=':%!python -m json.tool'
nnoremap ,6 @=':e %:p:h'
nnoremap ,5 @='mmgg=G`m'
nnoremap ,4 @=':set syntax='
nnoremap ,3 @=':!open %:p:h'
nnoremap ,2 @=':e **/*'
nnoremap ,o :tabnew | e **/*
vmap ," viwc""<Left>p<Right>i
nnoremap ," viwc""<Left>p<Right>i
onoremap ," viwc""<Left>p<Right>i
noremap ,' viwc''<Left>p<Right>i
nnoremap ,s :%s/\<\>/
noremap -- zf
vnoremap // y/"
nmap =j4 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=4)" 
nmap =j2 :%!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)" 
nmap X <Plug>(GitGutterPrevHunk)
nmap Z <Plug>(GitGutterNextHunk)
nmap cp :let @" = expand("%")
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
noremap <C-S-F> :args `grep --exclude-dir={./log,./tmp} -lrw '' .`<Left><Left><Left><Left>
noremap <C-S-H> :reg 
vnoremap <S-Up> :m '<-2gv=gv
vnoremap <S-Down> :m '>+1gv=gv
noremap <silent> <C-S-Down> :resize -5
noremap <silent> <C-S-Up> :resize +5
noremap <silent> <C-S-Right> :vertical resize -10
noremap <silent> <C-S-Left> :vertical resize +10
noremap <C-S> 
map <C-A> ggVG
nnoremap <S-Down> :m+
nnoremap <S-Up> :m-2
nnoremap <C-T> :tabnew
nnoremap <C-X> :tabnext
nnoremap <C-Z> :tabprevious
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
inoremap  :tabnew
inoremap  :tabnexti
inoremap  :tabpreviousi
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=2
set directory=~/.vim/tmp//,.,~/tmp,/var/tmp,/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set runtimepath=~/.vim/bundle/myplugin.vim,~/.vim,~/.vim/plugged/vim-javascript/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/vim-jsx/,~/.vim/plugged/MatchTagAlways/,~/.vim/plugged/indentLine/,~/.vim/plugged/python-syntax/,~/.vim/plugged/gruvbox/,~/.vim/plugged/onedark.vim/,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim82,/usr/local/share/vim/vimfiles/after,~/.vim/plugged/vim-javascript/after,~/.vim/plugged/vim-jsx/after,~/.vim/plugged/indentLine/after,~/.vim/after
set shiftwidth=2
set shortmess=filnxtToO
set showtabline=2
set smartcase
set statusline=\ %F%m%r%h%w\ %([%l,%v][%p%%]\ %)lines:%L
set noswapfile
set switchbuf=usetab,newtab
set tabstop=2
set title
set ttimeoutlen=50
set updatetime=100
set wildcharm=26
set wildignore=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico,*.cache,*.min.js,*.pdf,*.psd,node_modules/**,bower_components/**,*/tmp/*,*/log/*
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/access-ds
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd app/controllers/users/sessions_controller.rb
tabnew
tabnew
tabnew
tabnew
tabnew
tabrewind
edit app/controllers/users/sessions_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 168 - ((37 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
168
normal! 0
tabnext
edit app/mailers/mailer.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1176 - ((7 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1176
normal! 020|
tabnext
edit app/controllers/permitted_ip_addresses_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 019|
tabnext
edit app/views/mailer/notify_unauthorized_ip.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=0^\\s*\\%(%\\w*\\)\\=\\%(\\.[[:alnum:]_-]\\+\\)*#
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 020|
tabnext
edit app/models/restricted_ip_address.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 012|
tabnext
edit app/views/permitted_ip_addresses/_security_report.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer> <C-R><C-F> <Plug><cfile>
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define0^\\s*\\%(%\\w*\\)\\=\\%(\\.[[:alnum:]_-]\\+\\)*#
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Library/Ruby/Site/2.6.0,/Library/Ruby/Site/2.6.0/x86_64-darwin19,/Library/Ruby/Site/2.6.0/universal-darwin19,/Library/Ruby/Site,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,/Library/Ruby/Site/2.6.0/tags,/Library/Ruby/Site/2.6.0/x86_64-darwin19/tags,/Library/Ruby/Site/2.6.0/universal-darwin19/tags,/Library/Ruby/Site/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/2.6.0/universal-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/vendor_ruby/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/x86_64-darwin19/tags,/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/universal-darwin19/tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 03|
lcd ~/access-ds
tabnext 6
badd +0 ~/access-ds/app/controllers/users/sessions_controller.rb
badd +80 ~/access-ds/app/controllers/permitted_ip_addresses_controller.rb
badd +1 ~/access-ds/app/models/restricted_ip_address.rb
badd +1 ~/access-ds/app/views/permitted_ip_addresses
badd +8 ~/access-ds/app/views/permitted_ip_addresses/show.html.haml
badd +26 ~/access-ds/app/views/permitted_ip_addresses/index.html.haml
badd +23 ~/access-ds/app/views/permitted_ip_addresses/_form.html.haml
badd +9 ~/access-ds/app/views/permitted_ip_addresses/_report.html.haml
badd +58 ~/access-ds/app/views/client_forms/show.html.haml
badd +7 ~/access-ds/config/routes.rb
badd +1 ~/access-ds/app/views/reports/login_download_history
badd +0 ~/access-ds/app/views/reports/login_download_history/index.html.haml
badd +3 ~/access-ds/app/views/reports/login_download_history/reviewer_downloads.html.haml
badd +21 ~/access-ds/app/controllers/reports/login_download_history_controller.rb
badd +31 ~/access-ds/app/models/employee.rb
badd +182 ~/access-ds/app/models/user.rb
badd +0 ~/access-ds/app/views/permitted_ip_addresses/_security_report.html.haml
badd +1 ~/access-ds/app/views/administration
badd +84 ~/access-ds/app/views/administration/settings.html.haml
badd +12 ~/access-ds/app/controllers/administration_controller.rb
badd +62 ~/access-ds/app/models/metric.rb
badd +0 ~/access-ds/app/mailers/mailer.rb
badd +0 ~/access-ds/app/mailers/notify_unauthorized_ip.html.haml
badd +0 ~/access-ds/app/views/mailer/notify_unauthorized_ip.html.haml
badd +0 ~/access-ds/app/views/mailer/notify_sso_new_user.html.haml
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
