source ~/.config/nvim/keybindings.vim 
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/ale.vim 
source ~/.config/nvim/nerdcommments.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/vim-plug.vim
source ~/.config/nvim/vimsettings.vim
source ~/.config/nvim/filetypes.vim 
source ~/.config/nvim/extended.vim 
source ~/.config/nvim/general.vim

if $TERM_PROGRAM =~ "st-256color"
  " reset cursor when vim exits
  au VimLeave * set guicursor=a:ver25-blinkon0
endif
