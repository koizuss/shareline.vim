scriptencoding utf-8

if !exists('g:loaded_shareline')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

function! shareline#helloworld()
  let line = line(".")
  exec "let @+ = line"
  echo "Hello World!!!!!!!!!!!!!!!!!"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
