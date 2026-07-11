{ pkgs, ... }:
{
  # Enable Sway.
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    package = pkgs.swayfx; 
    extraPackages = with pkgs; [];
  };
}
