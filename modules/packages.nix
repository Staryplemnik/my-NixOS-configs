{ pkgs, ... }:


{
  programs.steam = {
   enable = true;
   gamescopeSession.enable = false;
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
   wget
   vim
   kitty
   vesktop
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
   python3
   swayimg 
   spotify
   godot
   unzip
   wl-clipboard
   rofi
   swaybg
   grim
   slurp
   waybar
   ntfs3g
   pavucontrol
   nautilus
   vscodium
   gcc
   python3
   helium
   xwayland-satellite
   xdg-desktop-portal-gnome
   thunar
   xdg-desktop-portal
   qemu_full
   virt-manager
 ];
}
