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
  programs.aeroshell = {
  enable = true;
  fonts.segoe.enable = true;
  polkit.enable = true;
  aerothemeplasma = {
    enable = true;
    sddm.enable = true;
    plymouth.enable = true;
};
environment.systemPackages = with pkgs; [
  wayland-utils
  wl-clipboard
  xclip
];
}

