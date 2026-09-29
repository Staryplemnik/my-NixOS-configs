{
description = "StaryPlamenik config";

inputs = {
nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

#```
spicetify-nix.url = "github:Gerg-L/spicetify-nix";
spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";

fluxer.url = "github:Hy4ri/fluxer-flake";

mangowm = {
  url = "github:mangowm/mango";
  inputs.nixpkgs.follows = "nixpkgs";
};

helium = {
  url = "github:schembriaiden/helium-browser-nix-flake";
  inputs.nixpkgs.follows = "nixpkgs";
};

xlibre-overlay.url = "git+https://codeberg.org/takagemacoed/xlibre-overlay";
#```

};

outputs = { self, nixpkgs, helium, xlibre-overlay, ... }@inputs: {
nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
system = "x86_64-linux";

#```
  specialArgs = {
    inherit inputs;
  };

  modules = [
    ./configuration.nix
    xlibre-overlay.nixosModules.overlay-xlibre-xserver
  ];
};
#```

};
}

