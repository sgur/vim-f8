" plugin/f8
" Version: 0.0.1
" Author: sgur <sgurrr+vim@gmail.com>
" License: MIT License

if exists('g:loaded_f8')
  finish
endif
let g:loaded_f8 = 1

let s:save_cpo = &cpo
set cpo&vim



" auto enable: 1
let g:f8_auto_enable = get(g:, 'f8_auto_enable', 1)
" --builtins: ['apply']
let g:f8_builtins = get(g:, 'f8_builtins', [])
" --ignore: ['E4', 'W']
let g:f8_ignore = get(g:, 'f8_ignore', [])
" --max-line-length: 79
let g:f8_max_line_length = get(g:, 'f8_max_line_length', 0)
" --max-complexity: MAX_COMPLEXITY
let g:f8_max_complexity = get(g:, 'f8_max_complexity', 0)



command! -nargs=1 -complete=file -buffer Flake8  call f8#run(<q-args>)



let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
