" ftplugin/f8
" Version: 0.0.1
" Author: sgur <sgurrr+vim@gmail.com>
" License: MIT License

if exists('g:loaded_f8')
  finish
endif
let g:loaded_f8 = 1

let s:save_cpo = &cpo
set cpo&vim



" --builtins: ['apply']
let g:f8_builtins = get(g:, 'f8_builtins', [])
" --ignore: ['E4', 'W']
let g:f8_ignore = get(g:, 'f8_ignore', [])
" --max-line-length: 79
let g:f8_max_line_length = get(g:, 'f8_max_line_length', 0)
" --max-complexity: MAX_COMPLEXITY
let g:f8_max_complexity = get(g:, 'f8_max_complexity', 0)



command! -nargs=0 -buffer Flake8  call f8#run()



augroup plugin-f8
  autocmd!
  autocmd BufWritePost <buffer>  call f8#run()
augroup END




let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
