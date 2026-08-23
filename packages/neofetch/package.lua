return {
  name = "neofetch",
  version = "7.1.0-vexos",
  summary = "Fast, highly customizable system info script",
  url = "https://githubusercontent.com",
  sha256 = "6583a3dfecefbd9aaae10c8ceef235030e1d51e5bec2972848c9a2eaceb6ff08",
  deps = {},
  install = function(p)
    p:install("neofetch", "usr/bin/neofetch")
  end,
}
