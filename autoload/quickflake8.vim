scriptencoding utf-8

function! quickflake8#run()
  if exists('b:current_compiler')
    let current_compiler = b:current_compiler
  endif
  compiler flake8

  if !&readonly
    update
  endif

  try
    cclose
    execute 'silent make' expand('%:.')
    if !empty(getqflist())
      copen
    endif
  finally
    if exists('b:current_compiler')
      let b:current_compiler = current_compiler
    endif
  endtry
endfunction

