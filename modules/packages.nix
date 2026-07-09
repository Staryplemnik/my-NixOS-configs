{ pkgs, ... }:

{
 
 # Programs enable
 programs.fish.enable = true;
 programs.firefox.enable = true;
 programs.steam.enable = true;
 services.flatpak.enable = true;
 services.printing.enable = false; 
 services.gnome.gnome-keyring.enable = true;

# Nonfree stuff from below
 nixpkgs.config.allowunfree = true; 
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
 gamescope
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
];
}
