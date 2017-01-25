setlocal autoindent
setlocal expandtab
setlocal formatoptions=croql
setlocal shiftwidth=2
setlocal smarttab
setlocal softtabstop=2
setlocal tabstop=2
setlocal textwidth=72

augroup puppetparser
  autocmd!
  autocmd BufWritePost *.pp :!puppet parser validate --render-as json %
augroup END

"Highlight the 72 character in every row in lightgrey.
highlight ColorColumn ctermbg=lightgrey
call matchadd('ColorColumn', '\%72v', 100)

"Comment current line and leave cursor where it started.
nnoremap <buffer> <localleader>c mcI#<esc>`c
"Uncomment current line and leave cursor where it started.
nnoremap <buffer> <localleader>u mu:s/^\s*\zs#//`u
