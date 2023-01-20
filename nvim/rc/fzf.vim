nnoremap <silent> ;; :FZF<CR>
nnoremap <silent> ff :Find<CR>

command! -bang -nargs=* Find call RipgrepFzf(<q-args>, <bang>0) 

function! RipgrepFzf(query, fullscreen)
  let command_fmt = "rg --column --line-number --no-heading --smart-case %s"
  let command = printf(command_fmt, shellescape(a:query))
  let spec = {'options': '--delimiter : --nth 4..'}
  call fzf#vim#grep(command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
