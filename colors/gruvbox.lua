-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.gruvbox"] = nil
package.loaded["themes.gruvbox.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.gruvbox").colorscheme()
