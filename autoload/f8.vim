scriptencoding utf-8

function! f8#run()
  let current_compiler = get(b:, 'current_compiler', '')
  compiler flake8

  call s:update_buffer()

  try
    execute 'silent make --exit-zero' expand('%:.')
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
