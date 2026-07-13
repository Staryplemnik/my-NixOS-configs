{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
  };

  outputs = { self, nixpkgs, millennium, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        {
          nixpkgs.overlays = [
            millennium.overlays.default
          ];
        }
        ./configuration.nix
      ];
    };
  };
}
