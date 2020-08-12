let g:fern#renderer = "nerdfont"
augroup my-fern-startup
  autocmd! *
  autocmd VimEnter * ++nested Fern . -drawer -stay
augroup END
