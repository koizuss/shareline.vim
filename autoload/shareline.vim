scriptencoding utf-8

if !exists('g:loaded_shareline')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

function! shareline#helloworld()
  let line = line(".")
  let remote = substitute(system('git remote get-url origin'), '\n\+$', '', '')
  let commit = substitute(system('git show -s --format=%H'), '\n\+$', '', '')
  exec "let @+ = remote"
  echo "Hello World!!!!!!!!!!!!!!!!!" . remote
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
