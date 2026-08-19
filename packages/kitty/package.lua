return {
  name    = "kitty",
  version = "0.48.2",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/kitty/kitty-0.48.2.tar.gz",
  sha256  = "845a0a0e61bffa56455179f5ca0d0af4fa72a2899ce946d011bb1bd146dc46f5",
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
