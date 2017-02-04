augroup puppetparser
  autocmd!
  autocmd BufWritePost Puppetfile :!r10k puppetfile check --color -v
augroup END

