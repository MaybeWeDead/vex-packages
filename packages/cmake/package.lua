return {
  name    = "cmake",
  version = "3.31.6",
  summary = "Cross-platform build system generator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/cmake/cmake-3.31.6.tar.gz",
  sha256  = "653427f0f5014750aafff22727fb2aa60c6c732ca91808cfb78ce22ddd9e55f0",
  deps    = { "libz", "openssl", "libcurl", "zstd", "libzstd", "expat" },
  build   = function(p)
    p:run("./bootstrap --prefix=/usr --system-curl --system-zlib --system-expat --system-sqlite --no-system-libarchive --parallel=$(nproc)")
    p:run("make -j$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " make install")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/cmake")
  end,
}
