{
  description = "CachyOS setup reproduced as a NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    plasma-manager,
    ...
  }:
    {
      nixosConfigurations.cachyos-reproduction =
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          modules = [
            ./hardware-configuration.nix

            ./modules/system.nix
            ./modules/networking.nix
            ./modules/desktop.nix
            ./modules/audio.nix
            ./modules/browsing.nix
            ./modules/cli.nix
            ./modules/development.nix
            ./modules/gaming.nix
            ./modules/virtualization.nix
            ./modules/random-fucking-shit.nix

            home-manager.nixosModules.home-manager

            {
              system.stateVersion = "26.05";

              users.users.mrhakkuh = {
                isNormalUser = true;
                home = "/home/mrhakkuh";
              };

              home-manager.users.mrhakkuh = {
                home.stateVersion = "26.05";

                imports = [
                  plasma-manager.homeModules.plasma-manager
                  ./modules/kde.nix
                ];
              };
            }
          ];
        };
    };
}