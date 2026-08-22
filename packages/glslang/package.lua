return {
  name    = "glslang",
  version = "1.4.357",
  summary = "GLSL/HLSL to SPIR-V compiler and validator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/glslang/glslang-1.4.357.tar.gz",
  sha256  = "2daeb43d5321df85b14553c901a3f7d90de71d17af360caf96ecce1b69746464",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glslang")
    p:run("test -f " .. p.install_root .. "/usr/lib/libglslang.so")
  end,
}
