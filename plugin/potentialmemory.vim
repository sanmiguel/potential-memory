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

function! potentialmemory#current_branch()
    return fugitive#repo().head()
endfunction

function! potentialmemory#branch_remote(branch)
    return fugitive#repo().config('branch.' . a:branch . '.remote')
endfunction

" TODO: Find a way to strip out connection protocol:
" git@github.com:foo/bar == https://github.com/foo/bar == git://github.com/foo/bar
function! potentialmemory#remote_url(remote)
    return fugitive#repo().config('remote.'.a:remote.'.url')
endfunction
