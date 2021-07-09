-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.tokyonight_dark"] = nil
package.loaded["themes.tokyonight_dark.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.tokyonight_dark").colorscheme()
