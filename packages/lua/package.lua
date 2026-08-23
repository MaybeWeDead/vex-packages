return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 scripting language interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "7a28ebdc5e14da59c3a3336fcdc64124fdd0216e3e51b492f2968c9f8b49d981",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lua")
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so")
  end,
}
