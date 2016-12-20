setlocal autoindent
setlocal expandtab
setlocal formatoptions=croql
setlocal shiftwidth=2
setlocal smarttab
setlocal softtabstop=2
setlocal tabstop=2
setlocal textwidth=80

"Highlight the 80 character in every row in lightgrey.
highlight ColorColumn ctermbg=lightgrey
call matchadd('ColorColumn', '\%80v', 100)

"Comment current line and leave cursor where it started.
nnoremap <buffer> <localleader>c mcI//<esc>`c
"Uncomment current line and leave cursor where it started.
nnoremap <buffer> <localleader>u mu:s/^\s*\zs\/\///`u
