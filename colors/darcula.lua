-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.darcula"] = nil
package.loaded["themes.darcula.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.darcula").colorscheme()
