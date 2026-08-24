return {
  name    = "curl",
  version = "8.14.1",
  summary = "URL retrieval tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/curl/curl-8.14.1.tar.gz",
  sha256  = "123485b29101b0e2967140cc73b5756855c56164d0e0618c680e2f3adcd7f5a1",
  deps    = { "openssl", "zlib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/curl")
  end,
}
