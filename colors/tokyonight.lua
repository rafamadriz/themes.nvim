-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.tokyonight"] = nil
package.loaded["themes.tokyonight.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.tokyonight").colorscheme()
