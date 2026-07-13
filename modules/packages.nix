{ pkgs, ... }:


{
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
    plugins = with pkgs.obs-studio-plugins; [
      droidcam-obs
    ];
  };

  programs.steam = {
   enable = true;
   package = pkgs.millennium-steam;
  };
  # Programs enable
  programs.fish.enable = true;
  programs.firefox.enable = true;
  services.flatpak.enable = true;
  services.printing.enable = false; 
  services.gnome.gnome-keyring.enable = true;
  services.power-profiles-daemon.enable = true;
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  # Nonfree stuff from below
  nixpkgs.config.allowUnfree = true; 
  environment.systemPackages = with pkgs; [
   vim
   kitty
   discord
   git
   prismlauncher
   obs-studio
   fastfetch
   shotcut
   vlc
   mangohud
   mako
   wl-clipboard
   grim
   rofi
   slurp
   waybar
   nautilus
   pavucontrol
   xdg-desktop-portal
   xdg-desktop-portal-wlr
   xdg-desktop-portal-gtk
   nwg-look
   featherpad
   krita
   brightnessctl
   playerctl
   pulseaudio
   power-profiles-daemon
   wine
   goverlay
   scrcpy
   gnome-boxes
   droidcam
  ];
}
