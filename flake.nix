{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";

    helium = {
      url = "github:schembriaiden/helium-browser-nix-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, millennium, helium, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };

      modules = [
        {
          nixpkgs.overlays = [
            millennium.overlays.default
          ];
        }
        ./configuration.nix
        ./modules/overlay.nix
      ];
    };
  };
}
