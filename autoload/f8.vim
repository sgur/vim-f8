scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim



function! f8#run(path)
  let current_compiler = get(b:, 'current_compiler', '')
  compiler flake8

  call s:update_buffer()

  try
    execute 'silent make' s:options() fnamemodify(a:path, ':.')
    call s:set_quickfix_visibility()
  finally
    if !empty('current_compiler')
      let b:current_compiler = current_compiler
    endif
  endtry
endfunction



function! s:set_quickfix_visibility()
  let qf = getqflist()
  if !empty(qf)
    execute 'copen' len(qf)
    setlocal nowrap
  else
    cclose
  endif
endfunction


function! s:update_buffer()
  if !&readonly
    update
  endif
endfunction


function! s:options()
  let _ = []
  if !empty(g:f8_builtins)
    call add(_, '--builtins=' . join(g:f8_builtins, ','))
  endif
  if !empty(g:f8_ignore)
    call add(_, '--ignore=' . join(g:f8_ignore, ','))
  endif
  if !empty(g:f8_max_line_length)
    call add(_, '--max-line-length=' . g:f8_max_line_length)
  endif
  if !empty(g:f8_max_complexity)
    call add(_, '--max-complexity=' . g:f8_max_complexity)
  endif
  return join(_, ' ')
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
