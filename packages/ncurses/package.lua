return {
  name    = "ncurses",
  version = "6.6",
  summary = "System V Release 4.0 curses library (libncursesw runtime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ncurses/ncurses-6.6.tar.gz",
  sha256  = "50a9c41167bb131ad61339712789f4d89fe4532b9d675353fbf7699757b95ec8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libncursesw.so.6")
  end,
}
