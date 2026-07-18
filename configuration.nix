# NixOS manual accessible by running ‘nixos-help’.
{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/fonts.nix
      ./modules/packages.nix    
      ./modules/users.nix
      ./modules/sound.nix
      ./modules/network.nix
      ./modules/locals.nix
      ./modules/udev-rules.nix
      ./modules/bootloader.nix
      ./modules/xserver.nix
      ./modules/nix-ld.nix
      ./modules/gnome.nix
      ./modules/overlay.nix
      ./modules/intel.nix
]; 
  # Nix-OS flake
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Enableing Nixpkg
  nixpkgs.config.allowUnfree = true;
  # System Version
  system.stateVersion = "26.05"; # Did you read the comment?
}
