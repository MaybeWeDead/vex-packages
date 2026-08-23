return {
  name    = "fetch",
  version = "2.3.0",
  summary = "Animated 3D fetch tool for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fetch/fetch-2.3.0.tar.gz",
  sha256  = "d7abe52b839f1c3e1c093f5250cf42e50e4384bc0eb71b45b2694755c5ddcc3d",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch")
  end,
}
