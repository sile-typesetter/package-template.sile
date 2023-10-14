local base = require("packages.base")

local package = pl.class(base)
package._name = "template"

function package:_init()
	base._init(self)
end

function package:registerCommands()
	self:registerCommand("template-command", function(options, content)
		options.fontsize = options.fontsize or "20pt"

		SILE.call("hbox")
		SILE.call("vfill")
		SILE.call("vfill")

		SILE.call("center", {}, function()
			SILE.call("font", { size = options.fontsize }, function()
				SILE.typesetter:typeset("The template package is installed!")
			end)
			SILE.call("par")
			if content then
				SILE.call("font", { size = options.fontsize }, content)
			end
		end)

		SILE.call("vfill")
		SILE.call("supereject")
	end)
end

package.documentation = [[
\begin{document}

The \autodoc:package{template} ...

\end{document}
]]

return package
