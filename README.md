# oauth2l Nix flake

This repository contains a [Nix flake](https://nixos.wiki/wiki/Flakes)
for the [oauth2l](https://github.com/google/oauth2l) utility
that obtains Google authentication tokens.

## Usage

```shell
nix run 'github:zombiezen/oauth2l-flake' -- -help
```

or:

```shell
nix profile install github:zombiezen/oauth2l-flake &&
oauth2l -help
```

## License

The Nix flake/packaging is available under an [MIT license](LICENSE)
for compatibility with nixpkgs.
oauth2l is released under an [Apache 2.0 license](https://github.com/google/oauth2l/blob/master/LICENSE).
