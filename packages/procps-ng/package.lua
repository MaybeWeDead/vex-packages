return {
  name    = "procps-ng",
  version = "4.0.7rc1",
  summary = "libproc2 process information library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/procps-ng/procps-ng-4.0.7rc1.tar.gz",
  sha256  = "5d3a35777e93c396d5011e76e9169abfaee3c8e9c2c15b678727869e4c1589d9",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libproc2.so.1")
  end,
}
