# Copyright 2024 Ross Light
# SPDX-License-Identifier: MIT

{ lib
, buildGoModule
, fetchFromGitHub
}:

let
  version = "1.3.0";
in

buildGoModule {
  pname = "oauth2l";
  inherit version;

  src = fetchFromGitHub {
    owner = "google";
    repo = "oauth2l";
    rev = "v${version}";
    hash = "sha256-bL1bys/CBo/P9VfWc/FB8JHW/aBwC521V8DB1sFBIAA=";
  };

  subPackages = [ "." ];
  ldflags = [ "-s" "-w" ];
  vendorHash = null;

  meta = with lib; {
    description = "A simple CLI for interacting with Google API authentication";
    homepage = "https://github.com/google/oauth2l";
    license = licenses.asl20;
    maintainers = with maintainers; [ zombiezen ];
  };
}
