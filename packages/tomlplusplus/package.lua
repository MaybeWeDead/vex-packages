return {
  name    = "tomlplusplus",
  version = "3.4.0",
  summary = "Header-only TOML config file parser for C++17",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0.tar.gz",
  sha256  = "0b548170398313e48837cee704ade4527326e130bc2845106436a0bf313fa3a6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/include/toml++")
  end,
}
