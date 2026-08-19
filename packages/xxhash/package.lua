return {
  name    = "xxhash",
  version = "0.8.3",
  summary = "Extremely fast non-cryptographic hash algorithm",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/xxhash/xxhash-0.8.3.tar.gz",
  sha256  = "aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxxhash.so")
  end,
}
