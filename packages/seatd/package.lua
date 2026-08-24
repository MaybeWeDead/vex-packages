return {
  name    = "seatd",
  version = "0.9.3",
  summary = "Seat management daemon and library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/seatd/seatd-0.9.3.tar.gz",
  sha256  = "921833dfb4832e7d198af697954576c0522f9d700e7896ee00da68f3e736bd92",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libseat.so.1")
  end,
}
