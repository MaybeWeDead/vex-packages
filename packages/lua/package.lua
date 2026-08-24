return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 scripting language interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "c31740d0c6ab8b0d871bf9c9de3e8e1c021eb60b036430b84d890c6e22080c01",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
