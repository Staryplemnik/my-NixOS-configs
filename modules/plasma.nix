{ pkgs, config, ...}:

{
services = {
  desktopManager.plasma6.enable = true;
  displayManager.sddm.enable = true;

  xrdp = {
    enable = true;
    defaultWindowManager = "startplasma-x11";
    openFirewall = true;
  };

  xserver = {
    enable = true;
    xkb = {
      layout = "pl";
      variant = "";
    };
  };
};
# Disabled along with the aerothemeplasma-nix input in flake.nix — see
# comment there. Re-enable once upstream patches are fixed.
# programs.aeroshell = {
#   enable = true;
#   fonts.segoe.enable = true;
#   polkit.enable = true;
#   sessions.wayland.enable = false;
#   aerothemeplasma = {
#     enable = true;
#     sddm.enable = true;
#     plymouth.enable = false;
#   };
# };
# programs.aeroshell.vistathemeplasma.plymouth.settings = {};

environment.systemPackages = with pkgs; [
  wayland-utils
  wl-clipboard
  xclip # Required for clipboard support over X11 RDP sessions
];
}

