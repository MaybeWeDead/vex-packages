return {
  name    = "kitty",
  version = "0.48.2",
  summary = "Fast, feature-rich, GPU-based terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/kitty/kitty-0.48.2.tar.gz",
  sha256  = "353302efde2aff4938b541b506b7982d2bc7665b584b572afab40beac4c93eec",
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
