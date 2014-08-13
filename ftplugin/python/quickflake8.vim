" vim_quickflake8
" Version: 0.0.1
" Author: sgur <sgurrr+vim@gmail.com>
" License: MIT License

if exists('g:loaded_vim_quickflake8')
  finish
endif
let g:loaded_vim_quickflake8 = 1

let s:save_cpo = &cpo
set cpo&vim



" --builtins: ['apply']
let g:quickflake8_builtins = get(g:, 'quickflake8_builtins', [])
" --ignore: ['E4', 'W']
let g:quickflake8_ignore = get(g:, 'quickflake8_ignore', [])
" --max-line-length: 79
let g:quickflake8_max_line_length = get(g:, 'quickflake8_max_line_length', 0)
" --max-complexity: MAX_COMPLEXITY
let g:quickflake8_max_complexity = get(g:, 'quickflake8_max_complexity', 0)



command! -nargs=0 -buffer Flake8  call quickflake8#run()



augroup plugin-quickflake8
  autocmd!
  autocmd BufWritePost <buffer>  call quickflake8#run()
augroup END




let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
