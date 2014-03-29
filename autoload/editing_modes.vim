function! editing_modes#WriterMode()
    set linebreak
    set nonumber
    if has('gui_running')
        set guifont=Cousine:h18
        sleep 0 " needed for rendering
        set columns=80
        sleep 0 " needed for rendering
        set fuoptions=maxvert
        set fu
    endif
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk
endfunction

function! editing_modes#DualWriterMode()
    call editing_modes#WriterMode()
    if has('gui_running')
        set guifont=Cousine:h16
        set columns=140
    endif
endfunction

function! editing_modes#CodingMode()
    set nolinebreak
    set number
    if has('gui_running')
        " set guifont=Meslo\ LG\ S\ DZ:h14
        set guifont=Inconsolata:h16
    endif
    if &fu
        set columns=120
        sleep 0
        set nofu
    endif
    nunmap j
    nunmap k
    vunmap j
    vunmap k
endfunction
