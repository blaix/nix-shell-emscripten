# Nix Shell Template for Emscripten

This is a template for an isolated [nix shell](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
that automatically loads with [direnv](https://direnv.net/)
for projects that build with [emscripten](https://emscripten.org/).

It includes a fix for a common problem of emscripten trying to write to a cache in the nix store.
See [`shell.nix`](./shell.nix).

## Requirements

* [nix](https://nix.dev/install-nix.html)
* [direnv](https://direnv.net/)
* Optional but highly recommended: [nix-direnv](https://github.com/nix-community/nix-direnv)
* Optional: [degit](https://github.com/Rich-Harris/degit) (otherwise just copy this repo however you want)

## Usage

1. `degit blaix/nix-shell-emscripten my-npm-project`
2. `cd my-npm-project`
3. `direnv allow`
4. `emcc -v` 🎉
