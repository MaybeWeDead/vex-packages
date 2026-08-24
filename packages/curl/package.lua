return {
  name    = "curl",
  version = "8.14.1",
  summary = "URL retrieval tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/curl/curl-8.14.1.tar.gz",
  sha256  = "9bd810f775f6abcc6917b0faf7e62289508991c992980bda525d39493c2c9f2f",
  deps    = { "openssl", "zlib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
