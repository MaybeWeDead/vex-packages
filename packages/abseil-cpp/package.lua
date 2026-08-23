return {
  name    = "abseil-cpp",
  version = "20260107",
  summary = "Google's Abseil C++ library (collection of C++ library code)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/abseil-cpp/abseil-cpp-2601.tar.gz",
  sha256  = "4416d388ab3cec6798b9bf5435d5f086bfc9fd1c83fb84e41d33190d8412d410",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libabsl_base.so.2601.0.0")
  end,
}
