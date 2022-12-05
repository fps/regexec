{ lib, stdenv, buildPythonPackage, pkgs, ... }:

buildPythonPackage rec {
  pname = "regexec";
  version = "1.0.0";

  # If you have your sources locally, you can specify a path
  src = ./.;

  # Pull source from a Git server. Optionally select a specific `ref` (e.g. branch),
  # or `rev` revision hash.
  # src = builtins.fetchGit {
  #   url = "git://github.com/stigok/ruterstop.git";
  #   ref = "master";
  #   #rev = "a9a4cd60e609ed3471b4b8fac8958d009053260d";
  # };

  # Specify runtime dependencies for the package
  # propagatedBuildInputs = with pkgs; [ bottle jalv ogfx-tools mod-host mod-utilities ];

  doCheck = false;

  # Meta information for the package
  meta = {
    description = ''
    '';
  };
}

