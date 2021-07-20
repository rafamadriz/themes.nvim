-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.onedark"] = nil
package.loaded["themes.onedark.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.onedark").colorscheme()
