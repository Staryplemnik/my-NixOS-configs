{ pkgs, inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.helium.overlays.default
  ];
}
