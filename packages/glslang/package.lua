return {
  name    = "glslang",
  version = "1.4.357",
  summary = "GLSL/HLSL to SPIR-V compiler and validator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glslang/glslang-1.4.357.tar.gz",
  sha256  = "440592d1bd7fead4d9b0d76925077414cd7855126bf0cb383c674de4d6654de6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glslang")
    p:run("test -f " .. p.install_root .. "/usr/lib/libglslang.so")
  end,
}
