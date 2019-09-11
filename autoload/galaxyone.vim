function! galaxyone#before() abort
  call localspace#before()

  let g:spacevim_autocomplete_method = 'deoplete'
  let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', '^__pycache__$']
endfunction
