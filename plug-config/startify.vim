function! StartifyEntryFormat()	
	return 'entry_path'	
endfunction

" Configure the startify start menu
let g:startify_lists = [
	\ { 'header' : ['   Recent'], 'type' : 'files' },
	\ { 'header' : ['	Sessions'], 'type' : 'sessions' }
  \ ]
let g:startify_fortune_use_unicode = 1

