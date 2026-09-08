{ pkgs, ... }:
{
  programs.sway = {
  enable = true;
  wrapperFeatures.gtk = true;
  };
  # xdg portal + pipewire = screensharing
  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };
}
