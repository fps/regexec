{ lib, stdenv, buildPythonPackage, pkgs, ... }:

buildPythonPackage rec {
  pname = "regexec";
  version = "1.0.2";

  src = ./.;

  doCheck = false;

  # Meta information for the package
  meta = {
    description = ''
    '';
  };
}

