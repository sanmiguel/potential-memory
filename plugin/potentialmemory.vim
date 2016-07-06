" File: potentialmemory.vim
" Maintainer: Michael Coles <https://github.com/sanmiguel>
" Repository: https://github.com/sanmiguel/potential-memory

" Pre-requisite: vim-fugitive
if !exists('g:loaded_fugitive') || &cp
    echoerr "potential-memory requires vim-fugitive to work"
    finish
endif
if exists("g:potential_memory_loaded")
    finish
endif
let g:potential_memory_loaded = 1

function! potentialmemory#origin_url()
    let origin_url = fugitive#repo().config('remote.origin.url')
    return origin_url
endfunction
