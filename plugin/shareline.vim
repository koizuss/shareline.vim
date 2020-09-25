scriptencoding utf-8

if exists('g:loaded_shareline')
    finish
endif
let g:loaded_shareline = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 ShareLine call shareline#yank()

let &cpo = s:save_cpo
unlet s:save_cpo
