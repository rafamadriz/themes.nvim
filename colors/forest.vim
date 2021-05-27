" clear cache so this reloads changes.
" useful for development
lua package.loaded['forest'] = nil
lua package.loaded['forest.colors'] = nil
lua package.loaded['forest.utils'] = nil
lua package.loaded['forest.config'] = nil
lua require('forest').colorscheme()
