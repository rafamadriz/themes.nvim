" clear cache so this reloads changes.
" useful for development
lua package.loaded['onepro'] = nil
lua package.loaded['onepro.colors'] = nil
lua package.loaded['onepro.utils'] = nil
lua package.loaded['onepro.config'] = nil
lua require('onepro').colorscheme()
