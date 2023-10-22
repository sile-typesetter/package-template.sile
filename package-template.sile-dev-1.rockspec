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
    ["sile.packages.template"] = "packages/template/init.lua",
    ["sile.classes.sample"] = "classes/sample.lua",
  },

  -- for documentation and config files
  copy_directories = {}
}
