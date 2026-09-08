{
  description = "My NixOS configuration";
  
 
 
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    xlibre-overlay.url = "git+https://codeberg.org/takagemacoed/xlibre-overlay";    

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

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";


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
          #  millennium.overlays.default
          ];
        }
        ./configuration.nix
        ./modules/overlay.nix
     # xlibre-overlay.nixosModules.overlay-xlibre-xserver
     # xlibre-overlay.nixosModules.overlay-all-xlibre-drivers
     # xlibre-overlay.nixosModules.overlay-xpra

        # aerothemeplasma-nix.nixosModules.aerothemeplasma-nix
      ];
    };
  };
}

