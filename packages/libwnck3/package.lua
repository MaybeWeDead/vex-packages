return {
  name    = "libwnck3",
  version = "43.3",
  summary = "Window Navigator Construction Kit (GTK3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libwnck3/libwnck3-43.3.tar.gz",
  sha256  = "7ac16071426105b3f55b92c6d9c17346c2db4b188223a3d67aa3936a81938028",
  deps    = { "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwnck-3.so.0")
  end,
}
