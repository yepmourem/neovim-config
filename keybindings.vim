
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
inoremap ( ()<ESC>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap “ “”<Esc>i
"use 'z' replace <BACKSPACE>
nnoremap z i<BS><Esc>l
inoremap <C-x> <BS>
nmap ; :
nmap [a 1
nmap [s 2
nmap [d 3
nmap [f 4
nmap [h 5
nmap [j 6
nmap [k 7
nmap [l 8
nmap [; 9
nmap [' 0
nmap f :w<Return>
nmap s :q<Return>
" nmap wq :wq<Return>
" nmap qa :qa<Return>
