return {
  name    = "tomlplusplus",
  version = "3.4.0",
  summary = "Header-only TOML config file parser for C++17",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0.tar.gz",
  sha256  = "1085bb3249b66ed125d7195cb558d3cab2cb86bd0a205962ff2ffaf772d992b7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/include/toml++")
  end,
}
