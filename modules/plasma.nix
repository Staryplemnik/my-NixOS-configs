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
environment.systemPackages = with pkgs; [
  wayland-utils
  wl-clipboard
  xclip
];
}

