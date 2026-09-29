{ config, pkgs, callPackage, ... }: {
  ...
  # if you use pulseaudio
  services.pipewire = {
     enable = true;
     pulse.enable = true;
   };

  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
  };
  services.displayManager.defaultSession = "xfce";
  ...
}
