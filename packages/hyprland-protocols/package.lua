return {
  name    = "hyprland-protocols",
  version = "0.7.0",
  summary = "Wayland protocol files for Hyprland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprland-protocols/hyprland-protocols-0.7.0.tar.gz",
  sha256  = "fbb489f413c022cc7df43e444387fcb7d8e0adeb9e3421597691f636fed844ec",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/wayland-protocols/hyprland/hyprland-surface-v1.xml")
  end,
}
