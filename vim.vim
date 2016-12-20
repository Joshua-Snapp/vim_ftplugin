"Comment current line and leave cursor where it started.
nnoremap <buffer> <localleader>c mcI"<esc>`c
"Uncomment current line and leave cursor where it started.
nnoremap <buffer> <localleader>u mu:s/^\s*\zs"//`u
