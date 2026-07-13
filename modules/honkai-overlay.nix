# configuration.nix
{ config, pkgs, inputs, }:
let
  aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
in
{

  programs.anime-game-launcher = {
    enable = true;
    # package = aagl.anime-game-launcher; # for non-flakes
    # package = inputs.aagl.packages.x86_64-linux.anime-game-launcher; # for flakes
  };
}
