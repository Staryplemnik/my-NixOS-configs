{ pkgs, ... }:

let
  spicetify-nix = builtins.getFlake "github:Gerg-L/spicetify-nix/a4ef43fb13e3615f36e5a0935aabe8cc29363dc9";
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  imports = [
    spicetify-nix.nixosModules.default
  ];

  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
    ];
  };
}
