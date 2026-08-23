return {
  name    = "pam",
  version = "1",
  summary = "Pluggable Authentication Modules (provided by the base system; stub package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pam/pam-1.tar.gz",
  sha256  = "67592bcc6dde6911f4bc48961133460c60b43a39036b0d4fc3ecb531bacd1b67",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
