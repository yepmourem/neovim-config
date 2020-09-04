call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"  Plug 'junegunn/seoul256.vim'
"  Plug 'junegunn/vim-easy-align'
"
" " Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"

""Plug 'ycm-core/YouCompleteMe'

" Benokai theme
Plug 'benjaminwhite/Benokai'
" Nord-vim colorscheme
Plug 'arcticicestudio/nord-vim'
" molokai
Plug 'tomasr/molokai'

""vim one
Plug 'rakr/vim-one'

Plug 'itchyny/lightline.vim'

" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
Plug 'mhartington/oceanic-next'

Plug 'altercation/vim-colors-solarized'
" " Using git URL
Plug 'junegunn/vim-github-dashboard'
" vim-json
Plug 'kevinoid/vim-jsonc'
" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"安装插件
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
" Unmanaged plugin (manually installed and updated)
"  Plug '~/my-prototype-plugin'
Plug 'mzlogin/vim-markdown-toc'
Plug 'itchyny/calendar.vim'
Plug 'Chiel92/vim-autoformat'
 Plug 'junegunn/vim-easy-align'
" VimWiki
Plug 'vimwiki/vimwiki'

Plug 'jpalardy/vim-slime'

" vim orgmode
Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-pathogen'
Plug 'inkarkat/vim-SyntaxRange'
call plug#end()
"===================================================
"===================================================
"===================================================
