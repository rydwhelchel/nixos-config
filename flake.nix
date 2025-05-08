{
  description = "Snow - flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      # Functionally identical to import nixpkgs { inherit system; };
      # but if there are multiple things which use pkgs, then the import statement
      # will have to get resolved multiple times. Using legacyPackages results in
      # only one resolution. See https://discourse.nixos.org/t/using-nixpkgs-legacypackages-system-vs-import/17462/7
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        vm = lib.nixosSystem {
          inherit system;
          modules = [
            ./systems/vm/configuration.nix
            ./systems/common/fonts.nix
          ];
        };
      };

      homeConfigurations = {
        ryan = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home ];
        };
      };
    };
}
