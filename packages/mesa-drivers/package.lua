return {
  name    = "mesa-drivers",
  version = "26.1.8",
  summary = "Intel + AMD OpenGL, Vulkan, and VA-API drivers (Mesa 26.1.8)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8.tar.xz",
  sha256  = "9483fbaf17c88d5fa1a05261bb796e6baee4376b7215b6c0030f09452a40c082",
  deps    = { "libglvnd", "libX11", "libxcb", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/i915_dri.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/radeonsi_dri.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan_intel.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan_radeon.so")
    p:run("test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/intel_icd.json")
    p:run("test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/radeon_icd.json")
    p:run("test -f " .. p.install_root .. "/usr/lib/libgallium-26.1.8-arch1.1.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libEGL_mesa.so.0.0.0")
    p:run("test -f " .. p.install_root .. "/usr/lib/libGLX_mesa.so.0.0.0")
    p:run("test -f " .. p.install_root .. "/usr/lib/libgbm.so.1.0.0")
  end,
}
