function! myspacevim#before() abort
  let g:python_host_prog = '/home/vagrant/.config/nvim_back/p2/bin/python'
  let g:python3_host_prog = '/home/vagrant/.config/nvim_back/p3/bin/python'
  let g:spacevim_autocomplete_method = 'deoplete'

  let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', '^__pycache__$']
endfunction

