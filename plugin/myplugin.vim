function! SplitByChar(w)
  return split(a:w, '\zs')
endfunction

function! GoToFile()
  let l:cw = expand("<cword>")
  let l:list = SplitByChar(l:cw)

  let l:result = ''

  for l:x in l:list
    if l:x ==# toupper(l:x)
      let l:result = l:result . '_' . tolower(l:x)
    else
      let l:result = l:result . l:x
    endif
  endfor

  let l:chars_list = SplitByChar(l:result)

  " Remove first character if it starts with (_)
  if l:chars_list[0] ==# '_'
    let l:final = join(l:chars_list[1:], '')
  else
    let l:final = join(l:chars_list, '')
  endif
  let @" = 'tabe **/*' . l:final
endfunction

noremap ,ff :call GoToFile()<CR>

function! ExtractSelectedText()
  let l:test = getreg('"')
  silent execute "!echo " . l:test . ">>  ~/.vim/rubocop.rb"
endfunction

command! Rubocop call ExtractSelectedText()


