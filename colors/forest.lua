-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.forest"] = nil
package.loaded["themes.forest.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.forest").colorscheme()
