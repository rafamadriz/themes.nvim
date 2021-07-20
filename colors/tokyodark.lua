-- clear cache so this reloads changes.
-- useful for development
package.loaded["themes.tokyodark"] = nil
package.loaded["themes.tokyodark.colors"] = nil
package.loaded["themes.utils"] = nil
package.loaded["themes.config"] = nil
require("themes.tokyodark").colorscheme()
