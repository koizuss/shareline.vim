scriptencoding utf-8

if !exists('g:loaded_shareline')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

function! s:get_repos_url(remote) abort
  let https = matchstr(a:remote, '^https://github\.com')
  if !empty(https)
    return substitute(a:remote, '\.git$', '', '')
  endif

  let ssh = matchstr(a:remote, '^git@github\.com')
  if !empty(ssh)
    return "https://github.com/" . substitute(substitute(a:remote, '\.git$', '', ''), '^git@github\.com:', '', '')
  endif

  throw "This remote is not Github repos [".a:remote."]"
endfunction

function! s:get_path() abort
  let root_path = substitute(system('git rev-parse --show-toplevel'), '\n\+$', '', '')
  return substitute(expand("%:p"), '^' . root_path . '/', '', '')
endfunction

function! s:get_url() abort
  let remote = substitute(system('git remote get-url origin'), '\n\+$', '', '')
  let commit = substitute(system('git show -s --format=%H'), '\n\+$', '', '')
  let repos = s:get_repos_url(remote)
  let path = s:get_path()
  return repos . "/blob/" . commit . "/" . path
endfunction

function! shareline#yank() range
  let line = a:firstline == a:lastline ? "#L" . line(".") : "#L" . a:firstline . "-L" . a:lastline
  let url = s:get_url() . line
  exec "let @+ = url"
  echo "yank " . url
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
