-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.github"] = nil
package.loaded["themes.github.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.github").colorscheme()
