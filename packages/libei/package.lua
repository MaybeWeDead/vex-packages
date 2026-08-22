return {
  name    = "libei",
  version = "1.6.0",
  summary = "Library for Emulated Input (libei + libeis)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libei/libei-1.6.0.tar.gz",
  sha256  = "ce2e956f3dfec3e460bf680c07661f0760b3c66c56a318245cf14ff20668f549",
  deps    = { "libxkbcommon", "libseat" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libeis.so.1")
  end,
}
