{
  description = "A flake for working on smartkidsllc.github.io";

  inputs = {
    # The update script will automatically keep this input up to date:
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # The update script will not keep this input up to date. It has to be
    # updated manually at the moment.
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
        packages.update-script =
          pkgs.resholve.writeScriptBin "update-script"
            {
              inputs = [
                pkgs.coreutils
                pkgs.gitMinimal
                pkgs.gnused
                pkgs.nix
              ];
              execer = [
                "cannot:${pkgs.lib.meta.getExe pkgs.nix}"
                # TODO: Remove this next one once resholve has a Git CLI
                # parser.
                "cannot:${pkgs.lib.meta.getExe pkgs.gitMinimal}"
              ];
              interpreter = pkgs.lib.meta.getExe pkgs.bash;
            }
            ''
              set -o errexit -o nounset -o pipefail

              function run_nix {
                nix \
                  --extra-experimental-features 'nix-command flakes' \
                  "$@"
              }

              # Flake inputs
              nixpkgs_flake_url="$(run_nix eval \
                --impure \
                --raw \
                --expr '(import ./flake.nix).inputs.nixpkgs.url'
              )"
              readonly nixpkgs_flake_url
              current_nixpkgs_branch="$(printf '%s' "$nixpkgs_flake_url" | cut --delimiter=/ --fields=3)"
              readonly current_nixpkgs_branch

              latest_nixpkgs_branch="$(git ls-remote --heads https://github.com/NixOS/nixpkgs 'nixos-??.??' \
                | tail --lines=1 \
                | cut --fields=2 \
                | cut --delimiter=/ --fields=3
              )"

              if [ "$current_nixpkgs_branch" != "$latest_nixpkgs_branch" ]
              then
                sed --in-place "s/$current_nixpkgs_branch/$latest_nixpkgs_branch/g" flake.nix
              fi
            '';
        devShells.default = pkgs.mkShellNoCC {
          name = "shell-for-working-on-smartkidsllc.github.io";
          packages = [ pkgs.corepack ];
        };
      }
    );
}
