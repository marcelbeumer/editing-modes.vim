" If already loaded, we're done...
if exists('g:loaded_editing_modes')
  finish
endif
let g:loaded_editing_modes = 1


command! CodingMode silent! call editing_modes#CodingMode()
command! WriterMode silent! call editing_modes#WriterMode()
command! DualWriterMode silent! call editing_modes#DualWriterMode()
