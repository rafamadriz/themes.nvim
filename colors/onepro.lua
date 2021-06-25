-- clear cache so this reloads changes.
-- useful for development
package.loaded['themes.onepro'] = nil
package.loaded['themes.onepro.colors'] = nil
package.loaded['themes.utils'] = nil
package.loaded['themes.config'] = nil
require('themes.onepro').colorscheme()
