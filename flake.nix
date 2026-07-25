{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
    
    # Disabled: aerothemeplasma-nix's libplasma patches currently fail to
    # apply against every readily available nixpkgs revision (tried both
    # nixos-26.05/Plasma 6.6.5 and nixos-25.11/Plasma 6.5.6), plus several
    # other upstream bugs (lib.toString typo, missing vistathemeplasma
    # option, stale wayland-protocols requirement). Re-enable once
    # https://github.com/nyakase/aerothemeplasma-nix/issues/8 is resolved.
    # aerothemeplasma-nix = {
    #   url = "github:nyakase/aerothemeplasma-nix";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

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
        # aerothemeplasma-nix.nixosModules.aerothemeplasma-nix
      ];
    };
  };
}

