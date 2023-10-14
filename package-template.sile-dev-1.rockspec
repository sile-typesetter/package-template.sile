package = "package-template.sile"
version = "dev-1"

description = {
  summary = "A template for SILE packages...",
  detailed = [[]],
  homepage = "", -- e.g. its GitHub repo
  maintainer = "",
  license = "MIT"
}

source = {
  url = "", -- a clonable repository link
  -- tag = ""
}

dependencies = {}
build = {
  type = "builtin",

  modules = {
    ["sile.packages.template"] = "packages/template/init.lua"
  },

  -- the following tables are useful if you need to install non-code files together (like configs or imagens)
  -- install = {
  --   lua = {
  --     ["sile.resources.item"] = "sile/recourses/item.extension"
  --   },
  --   conf = {}
  -- },

  -- copy_directories = {}
}
