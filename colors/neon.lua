-- clear cache so this reloads changes.
-- useful for development
package.loaded['themes.neon'] = nil
package.loaded['themes.neon.colors'] = nil
package.loaded['themes.utils'] = nil
package.loaded['themes.config'] = nil
require('themes.neon').colorscheme()
