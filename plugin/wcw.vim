if exists('g:locaed_wcw') | finish | endif " prevent loading file twice

let s: save_cpo - &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run plugin
command! Wcw lua require'wcw'.wcw()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_wcw = 1

