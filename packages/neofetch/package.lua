return {
  name = "neofetch",
  version = "7.1.0-vexos",
  summary = "Fast, highly customizable system info script with VexOS logo",
  url = "https://raw.githubusercontent.com/MaybeWeDead/vex-packages/main/packages/neofetch/neofetch-7.1.0-vexos.tar.gz",
  sha256 = "cf4bdb3478cb236c507707d51d4cd3ba4a276615886dfd7c1a50b4360da00dae",
  deps = {},
  archive = { strip = 0 },
  install = function(p)
    p:install("neofetch", "usr/bin/neofetch")
  end,
}
