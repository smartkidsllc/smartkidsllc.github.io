{
  description = "A flake for working on smartkidsllc.github.io";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs =
    { self, nixpkgs }:
    let
      devShellsFor =
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          "${system}".default = pkgs.mkShellNoCC {
            name = "shell-for-working-on-smartkidsllc.github.io";
            packages = [ pkgs.corepack ];
          };
        };
    in
    {
      # This is a workaround for this issue:
      # <https://github.com/NixOS/nix/issues/3843>
      devShells =
        (devShellsFor "aarch64-darwin") // (devShellsFor "x86_64-darwin") // (devShellsFor "x86_64-linux");
    };
}
