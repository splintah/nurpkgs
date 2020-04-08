{ pkgs ? import <nixpkgs> {} }:
rec {
  # home-manager modules
  hmModules = import ./hm-modules;
  # A list of all modules in hmModules.
  allHmModules = builtins.attrValues hmModules;

  id3 = pkgs.callPackage ./pkgs/id3 { };
  mopidy-podcast = pkgs.callPackage ./pkgs/mopidy-podcast { };
  ocamlweb = pkgs.callPackage ./pkgs/ocamlweb { };
  onedrive = pkgs.callPackage ./pkgs/onedrive { };
}