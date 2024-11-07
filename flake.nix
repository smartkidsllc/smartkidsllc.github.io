{
  description = "A flake for working on smartkidsllc.github.io";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
      in
      {
        devShells.default = pkgs.mkShellNoCC {
          name = "shell-for-working-on-smartkidsllc.github.io";
          packages = [ pkgs.corepack ];
        };
      }
    );
}
