return {
  name    = "zlib",
  version = "1.3.2",
  summary = "Compression library (provided by the base system; stub package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zlib/zlib-1.3.2.tar.gz",
  sha256  = "a36fca50d9fac67d73158e3fbf4872e8b09f64c3a03973d58b03b6db364675ff",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libz.so.1")
  end,
}
