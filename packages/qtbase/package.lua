return {
  name    = "qtbase",
  version = "6.8.2",
  summary = "Qt 6 base libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/qtbase/qtbase-6.8.2.tar.gz",
  sha256  = "d3913dd38f9dcddbf6d3980f712e80acf65d8382844298de5364ef4b335fd020",
  deps    = { "at-spi2-core", "cairo", "double-conversion", "fontconfig", "freetype", "gdk-pixbuf", "gtk3", "harfbuzz", "libICE", "libSM", "libb2", "libdrm", "libinput", "libmtdev", "libpng", "libz", "md4c", "pango", "pcre2", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "xkbcommon", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Core.so.6 -a -e " .. p.install_root .. "/usr/lib/libQt6Gui.so.6")
  end,
}
