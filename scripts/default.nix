{ pkgs, ... }:
let
  inherit (builtins) attrNames readDir;

  scripts = attrNames (readDir ./.);

  mkScript = script: pkgs.writeScriptBin "${script}" (builtins.readFile ./${script}.sh);
in
mkScript scripts
