
let s:projects = {}
" TODO Something a little more dynamic...
let s:projfile = expand('~/.config/nvim/potmem/projects.dat')

" TODO refactor to use dict functions
" function! s:projects.list_projects() etc
function! potentialmemory#config#ListProjects() abort
    for key in keys(s:projects)
        echom key . ': ' . string(s:projects[key])
    endfor
endfunction

" TODO: Replace Save/Load with python:
" writefile requires a list of string/ints
function! potentialmemory#config#Save() abort
    let ps = items(s:projects)
    if writefile(ps, s:projfile)
        echomsg 'Error writing projects to disk'
    endif
endfunction

function! potentialmemory#config#Load() abort
    if filereadable(s:projfile)
        let items = readfile(s:projfile)
        for item in items
            let [key, value] = item
            let s:projects[key] = value
        endfor
    endif
    return
endfunction

function! potentialmemory#config#AddProject(name, config) abort
    let s:projects[a:name] = a:config
    return
endfunction

function! potentialmemory#config#Debug() abort
    return s:projects
endfunction
