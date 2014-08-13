" ftplugin/f8
" Version: 0.0.1
" Author: sgur <sgurrr+vim@gmail.com>
" License: MIT License

let s:save_cpo = &cpo
set cpo&vim



if g:f8_auto_enable
  augroup plugin-f8
    autocmd!
    autocmd BufWritePost <buffer>  call f8#run(expand("<amatch>"))
  augroup END
endif



let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
