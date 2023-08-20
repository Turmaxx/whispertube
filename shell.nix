let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    name = "Python Dev Environment";
    buildInputs = with pkgs; [
      poetry
    ];
    shellHook = ''
      poetry install
      poetry shell
      clear
    '';
  }
