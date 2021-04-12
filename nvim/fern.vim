" Fern config
map <C-b> :Fern %:h -reveal=% -drawer -toggle -stay -keep -width=25<CR>
let g:fern#renderer = "nerdfont"

function! s:init_fern() abort
	set foldmethod=manual
	nmap <buffer> <Backspace> <Plug>(fern-action-collapse)
	nmap <buffer> <CR> <Plug>(fern-action-open-or-expand)
	nmap <buffer> e <Plug>(fern-action-enter)
	nmap <buffer> E <Plug>(fern-action-leave)
	nmap <buffer> q :<C-u>quit<CR>
endfunction

augroup my-fern-startup
	autocmd! *
	autocmd FileType fern call s:init_fern()
	autocmd VimEnter * ++nested Fern %:h -reveal=% -drawer -toggle -stay -keep -width=25
augroup END
