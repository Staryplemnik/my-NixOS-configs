{ config, pkgs, ... }:

{
  # Intel graphics + hardware video acceleration
  hardware.graphics = {
    enable = true;
    enable32Bit = true;  # only needed if you run 32-bit apps/games via Steam etc.
    extraPackages = with pkgs; [
     intel-media-driver
     intel-vaapi-driver
     libva-vdpau-driver   # <- renamed from vaapiVdpau
     libvdpau-va-gl
     intel-compute-runtime
];
  };

  # Force the correct VAAPI driver (Iris Xe needs iHD, not the legacy i965)
  environment.variables.LIBVA_DRIVER_NAME = "iHD";

  # Make sure vainfo/intel_gpu_top etc. are available for debugging
  environment.systemPackages = with pkgs; [
    libva-utils     # gives you `vainfo`
    intel-gpu-tools # gives you `intel_gpu_top` to watch GPU encode load live
    obs-studio
  ];
}
