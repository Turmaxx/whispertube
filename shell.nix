let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  name = "Python Dev Environment";
  # buildInputs = with pkgs; [
  #   python311

  #   poetry
  # ];
  # shellHook = ''
  #   poetry install
  #   poetry shell
  #   clear
  # '';
  nativeBuildInputs = with pkgs; [
    python310
    python310Packages.pytube
    python310Packages.openai-whisper
  ];
  shellHook = ''
    echo Start developing ...
  '';
}
