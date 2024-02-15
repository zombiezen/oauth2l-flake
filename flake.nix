# Copyright 2024 Ross Light
# SPDX-License-Identifier: MIT

{
  description = "Nix packaging for oauth2l";

  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.callPackage ./oauth2l.nix {};

        apps.default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/oauth2l";
        };
      }
    );
}
