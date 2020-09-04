


"        _ _   _           _
"  _   _| | |_(_)___ _ __ (_)_ __  ___
" | | | | | __| / __| '_ \| | '_ \/ __|
" | |_| | | |_| \__ \ | | | | |_) \__ \
"  \__,_|_|\__|_|___/_| |_|_| .__/|___/
" |_|
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"=================================================
"=================================================
"=================================================
"    __    _____   _   _ _   __                __   __
"   /_/   / ___ \ (_)_(_) | / /__  __ ____    (()) /  \
"  / _ \ / | _ \ \ / _` | |/ /_  )/ _`  _ \  / _ '| () |
" |  __/|  |   /  | (_| |_/ / / /| (_|  __/ | (_| |\__/
"  \___| \ |_|_\ / \__,_|/_/ /___|\__,____|  \__,_|
"         \_____/

au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
inoremap ( ()<ESC>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
"use 'z' replace <BACKSPACE>
nnoremap z i<BS><Esc>l
inoremap <C-x> <BS>
"              _         __                            _
"   __ _ _   _| |_ ___  / _| ___  _ __ _ __ ___   __ _| |_
"  / _` | | | | __/ _ \| |_ / _ \| '__| '_ ` _ \ / _` | __|
" | (_| | |_| | || (_) |  _| (_) | |  | | | | | | (_| | |_
"  \__,_|\__,_|\__\___/|_|  \___/|_|  |_| |_| |_|\__,_|\__|
"
let g:python3_host_prog="/bin/python"
noremap <F3> :Autoformat<CR>


"            _                _
"   ___ __ _| | ___ _ __   __| | __ _ _ __
"  / __/ _` | |/ _ \ '_ \ / _` |/ _` | '__|
" | (_| (_| | |  __/ | | | (_| | (_| | |
"  \___\__,_|_|\___|_| |_|\__,_|\__,_|_|
"
let g:calendar_frame = 'default'


map <C-n> :NERDTreeToggle<CR>


let g:vim_markdown_math = 1

"                       _       _
" _ __ ___   __ _ _ __| | ____| | _____      ___ __        _ __  _ __ _____   __
" | '_ ` _ \ / _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \ _____| '_ \| '__/ _ \ \ / /
" | | | | | | (_| | |  |   < (_| | (_) \ V  V /| | | |_____| |_) | | |  __/\ V /
" |_| |_| |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|     | .__/|_|  \___| \_/
" |_|
" _
" (_) _____      __
" | |/ _ \ \ /\ / /
" | |  __/\ V  V /
" |_|\___| \_/\_/
"
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
" let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0
"
" " set to 1, the vim will refresh markdown when save the buffer or
" " leave from insert mode, default 0 is auto refresh markdown as you edit or
" " move the cursor
" " default: 0
 let g:mkdp_refresh_slow = 0
"
" " set to 1, the MarkdownPreview command can be use for all files,
" " by default it can be use in markdown file
" " default: 0
 let g:mkdp_command_for_global = 1
"
" " set to 1, preview server available to others in your network
" " by default, the server listens on localhost (127.0.0.1)
" " default: 0
" let g:mkdp_open_to_the_world = 1

" " use custom IP to open preview page
" " useful when you work in remote vim and preview on local browser
" " more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" " default empty
 let g:mkdp_open_ip = '127.0.0.1'
"
" " specify browser to open preview page
" " default: ''
 let g:mkdp_browser = ''
"
" " set to 1, echo preview page url in command line when open preview page
" " default is 0
 let g:mkdp_echo_preview_url = 1
"
" " a custom vim function name to open preview page
" " this function will receive url as param
" " default is empty
 let g:mkdp_browserfunc = ''
"
" " options for markdown render
" " mkit: markdown-it options for render
" " katex: katex options for math
" " uml: markdown-it-plantuml options
" " maid: mermaid options
" " disable_sync_scroll: if disable sync scroll, default 0
" " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
" "   middle: mean the cursor position alway show at the middle of the preview page
" "   top: mean the vim top viewport alway show at the top of the preview page
" "   relative: mean the cursor position alway show at the relative positon of the preview page
" " hide_yaml_meta: if hide yaml metadata, default is 1
" " sequence_diagrams: js-sequence-diagrams options
" " content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
\ 'mkit': {},
\ 'katex': {},
\ 'uml': {},
\ 'maid': {},
\ 'disable_sync_scroll': 0,
\ 'sync_scroll_type': 'middle',
\ 'hide_yaml_meta': 1,
\ 'sequence_diagrams': {},
\ 'flowchart_diagrams': {},
\ 'content_editable': v:false
\ }

" " use a custom markdown style must be absolute path
" " like '/Users/username/markdown.css' or expand('~/markdown.css')
" " let g:mkdp_markdown_css = ''
" "
"  " use a custom highlight style must absolute path
"  " like '/Users/username/highlight.css' or expand('~/highlight.css')
" " let g:mkdp_highlight_css = ''
" "
"  " use a custom port to start server or random for empty
" let g:mkdp_port = '7888'
"  " preview page title
" " ${name} will be replace with the file name
 let g:mkdp_page_title = '「${name}」'
" "
" " example
nmap <C-y> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-e> <Plug>MarkdownPreviewToggle
" "============================================================================================
"============================================================================================
"===============================================================================================
"============================================================================================

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <C-x><C-k> <plug>(fzf-complete-word)
imap <C-x><C-f> <plug>(fzf-complete-path)
imap <C-x><C-l> <plug>(fzf-complete-line)
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Word completion with custom spec with popup layout option
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': -1.2, 'height': 0.9, 'xoffset': 1 }})


"vimWiki
let g:vimwiki_list = [{
			\ 'path': '$HOME/vimwiki',
			\ 'template_path': '$HOME/vimwiki/templates',
			\ 'template_default': 'default',
			\ 'template_ext': '.htm'}]
runtime plugged/vim-pathogen/autoload/pathogen.vim
""execute pathogen#infect()
nmap <F8> :TagbarToggle<CR>

let g:ctrlp_working_path_mode = 0

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

let g:markdown_fenced_languages = ['css', 'js=javascript']

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

"======================================================"
"=============vim-easy-align===========================
"======================================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"======================================================"
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
