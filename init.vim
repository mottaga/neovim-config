" Options
source $HOME/.config/nvim/options.vim

" Color scheme
syntax on
colorscheme jellybeans

" Plugins
source $HOME/.config/nvim/load_plugins.vim           

" Functions
source $HOME/.config/nvim/functions.vim           

" Keyboard mapping
source $HOME/.config/nvim/keybindings.vim

" Load lua files
luafile $HOME/.config/nvim/config.lua
