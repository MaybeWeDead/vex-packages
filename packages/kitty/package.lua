return {
  name    = "kitty",
  version = "0.48.2",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/kitty/kitty-0.48.2.tar.gz",
  sha256  = "1d32d2985f6f03923ea63fb7c32683b49e2d4ce19aa9e90b161f7f24efb00c9c",
  deps    = {
    "harfbuzz", "libz", "libpng", "lcms2", "xxhash", "openssl", "pixman",
    "cairo", "freetype", "fontconfig", "libcanberra", "dbus",
    "libXcursor", "libXrandr", "libXi", "libXinerama", "libglvnd",
    "xkbcommon", "libX11", "libxcb",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kitty")
  end,
}
