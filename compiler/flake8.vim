" Vim compiler file
" Compiler:     flake8
" Maintainer:   sgur <sgurrr+vim@gmail.com>
"
scriptencoding utf-8

if exists("b:current_compiler")
  finish
endif
let b:current_compiler = "flake8"

let s:cpo_save = &cpo
set cpo-=C

CompilerSet errorformat=
      \%f:%l:%c:\ %t%n\ %m,
      \%f:%l:\ %t%n\ %m

CompilerSet makeprg=flake8

let &cpo = s:cpo_save
unlet s:cpo_save
