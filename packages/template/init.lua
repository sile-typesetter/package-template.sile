local base = require("packages.base")

local package = pl.class(base)
package._name = "template"

function package:_init()
  base._init(self)
end

function package:registerCommands()
  self:registerCommand("package-command", function(_, _)
  end)
end

package.documentation = [[
\begin{document}
\autodoc:package{}
\end{document}
]]

return package
