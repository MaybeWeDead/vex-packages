return {
  name    = "libappstream",
  version = "1.1.5",
  summary = "AppStream cross-distro software metadata library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libappstream/libappstream-1.1.5.tar.gz",
  sha256  = "18d49dd97e36780b8dfd81087e82a684c27db4ede0b0074284cc4dd75766db6a",
  deps    = { "libfyaml", "libxmlb", "libcurl", "libxml2", "libyaml" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libappstream.so.5")
  end,
}
