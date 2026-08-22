return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 scripting language interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "6bba0d17991b7232e695f301262ab6f0d911fce95de77845d1c4667d1391aa6a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lua")
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so")
  end,
}
