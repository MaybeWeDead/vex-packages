return {
  name    = "libjpeg-turbo",
  version = "3.2.0",
  summary = "MMX/SSE2/SMID accelerated library for JPEG images",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libjpeg-turbo/libjpeg-turbo-3.2.0.tar.gz",
  sha256  = "f718e1e90fc05ea832520a8c820a59cf9f4eea971eead50459803c7d995f4da0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjpeg.so.8")
  end,
}
