set nocompatible

syntax enable
filetype plugin on

" Find files
" 	:find <nomdefichier>TAB
set path+=**
set wildmenu

" Tag jumping
" 	^] Jump to tag
" 	g^] Ambiguous tag list of source
" 	^t jump back up
command! MakeTags !ctags -R .

"Autocomplete
" 	^x^n Just autocompplet from this file
"	^x^f for filenames 
" 	^x^ for tag
" 	^n for anything
"
" 	then ^n or ^n to go back and forth in the suggestion list:w

" File browser
" 	:edit a folder to open file browser
" 	<CR>/v/t to open in an H-split/V-split tab
" 	check |netrw-browse-maps| for more
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
