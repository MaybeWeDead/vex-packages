return {
  name = "hyprutils",
  version = "0.14.0",
  summary = "Utility library for the Hypr ecosystem",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprutils/hyprutils-0.14.0.tar.gz",
  sha256 = "a59387fb388f1796a15f047a41f12d5567f79911976856cae5cac8b105ea19a8",
  deps = { "pixman" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libhyprutils.so.13")
  end,
}
