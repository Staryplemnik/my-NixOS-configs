{ pkgs, ... }:
{
  # Enable Sway.
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      # Only packages that come with Sway WM
      swaylock
      swayidle
  ];
  };
}
