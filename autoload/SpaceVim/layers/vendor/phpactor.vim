"=============================================================================
" phpactor.vim --- lang#php layer
" Copyright (c) 2016-2019 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


""
" @section lang#php, layer-lang-php
" @parentsection layers
" This layer is for PHP development. It proides code completion, syntax
" checking, and jump to definition.



function! SpaceVim#layers#vendor#phpactor#plugins() abort
  let plugins = []

  call add(plugins, ['StanAngeloff/php.vim', { 'on_ft' : 'php'}])
  call add(plugins, ['2072/PHP-Indenting-for-VIm', { 'on_ft' : 'php'}])
  call add(plugins, ['rafi/vim-phpspec', { 'on_ft' : 'php'}])
  call add(plugins, ['phpactor/phpactor', { 'on_ft' : 'php', 'build': 'composer install'}])
  call add(plugins, ['stephpy/vim-php-cs-fixer', { 'on_ft' : 'php'}])
  call add(plugins, ['kristijanhusak/deoplete-phpactor', { 'on_ft' : 'php'}])

  return plugins
endfunction

let s:auto_fix = 0

function! SpaceVim#layers#vendor#phpactor#set_variable(var) abort
  let s:auto_fix = get(a:var, 'auto_fix', 0)
  let g:php_cs_fixer_rules = "@PSR2,no_unused_imports" " options: --fixers
endfunction

function! SpaceVim#layers#vendor#phpactor#config() abort
  nmap <Leader>u :call phpactor#UseAdd()<CR>
  nmap <Leader>mm :call phpactor#ContextMenu()<CR>
  nmap <Leader>nn :call phpactor#Navigate()<CR>
  nmap <Leader>o :call phpactor#GotoDefinition()<CR>
  nmap <Leader>ct :call phpactor#Transform()<CR>
  nmap <Leader>cc :call phpactor#ClassNew()<CR>
  nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
  vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
  vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
endfunction

