{ pkgs, ... }:


{
  programs.steam = {
   enable = true;
   package = pkgs.millennium-steam;
  };
  # Programs enable
  programs.fish.enable = true;
  programs.firefox.enable = false;
  services.flatpak.enable = true;
  services.printing.enable = false; 
  services.gnome.gnome-keyring.enable = false;
  services.power-profiles-daemon.enable = true;
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
   krita
   pulseaudio
   power-profiles-daemon
   wine
   helium
   python3
   gnome-system-monitor 
   gamescope
  ];
}
