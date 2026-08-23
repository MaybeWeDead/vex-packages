return {
  name    = "lua",
  version = "5.5.1",
  summary = "Lua 5.5 scripting language interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/lua/lua-5.5.1.tar.gz",
  sha256  = "cd9d79e0455b26a379ed3a02a72d03c35899919544b2fd0c019bce75c41dab45",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lua")
    p:run("test -f " .. p.install_root .. "/usr/lib/liblua.so")
  end,
}
