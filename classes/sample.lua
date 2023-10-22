local plain = require("classes.plain")

local class = pl.class(plain)
class._name = "sample"

-- This class will inherit the plain's default frameset, if you don't want so just overwrite it below
-- class.defaultFrameset = {
--   content = {
--     left = "",
--     right = "",
--     top = "",
--     bottom = ""
--   }
-- }

function class:_init(options)
  plain._init(self, options)
  self:loadPackage("template")
end

function class:registerCommands()
  plain.registerCommands(self)
end

return class
