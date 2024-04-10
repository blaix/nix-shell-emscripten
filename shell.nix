with import <nixpkgs> {};
mkShell {

  # fix for emscripten trying to write to nix store
  # https://github.com/NixOS/nixpkgs/issues/139943#issuecomment-1753113985
  EM_CONFIG = pkgs.writeText ".emscripten" ''
      EMSCRIPTEN_ROOT = '${pkgs.emscripten}/share/emscripten'
      LLVM_ROOT = '${pkgs.emscripten.llvmEnv}/bin'
      BINARYEN_ROOT = '${pkgs.binaryen}'
      NODE_JS = '${pkgs.nodejs_20}/bin/node'
      CACHE = '${toString ./.cache}'
    '';

  buildInputs = [
    bashInteractive
    emscripten
    nodejs_20
  ];

  shellHook = ''
  '';
}
