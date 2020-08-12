let g:fern#renderer = "nerdfont"
augroup my-fern-startup
  autocmd! *
  autocmd VimEnter * ++nested Fern . -drawer -stay
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
