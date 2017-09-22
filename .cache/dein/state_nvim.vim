if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/dec49/dotfiles/.config/nvim/init.vim', '/Users/dec49/.config/nvim/dein/toml/dein.toml', '/Users/dec49/.config/nvim/dein/toml/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/dec49/.config/nvim/dein'
let g:dein#_runtime_path = '/Users/dec49/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/dec49/.cache/dein/.cache/init.vim'
let &runtimepath = '/Users/dec49/.config/nvim,/etc/xdg/nvim,/Users/dec49/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/dec49/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/Users/dec49/.cache/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.2.0_1/share/nvim/runtime,/Users/dec49/.cache/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/dec49/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/dec49/.config/nvim/after,/Users/dec49/.config/nvim/./repos/github.com/Shougo/dein.vim'
filetype off
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neocomplete.vim'])
