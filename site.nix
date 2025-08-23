{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "simple-site";
  version = "0.1";
  src = ./.;

  phases = [ "installPhase" ];

  installPhase = ''
    set -euo pipefail
    mkdir -p "$out"

    if [ -f "$src/src/documents/index.html" ]; then
      cp "$src/src/documents/index.html" "$out/index.html"
    else
      echo "Error: src/documents/index.html not found" >&2
      exit 1
    fi

    for d in assets styles; do
      if [ -d "$src/src/$d" ]; then
        cp -r "$src/src/$d" "$out/"
      fi
    done
  '';
}
