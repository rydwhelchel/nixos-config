# NOTE: Reviewed, can just use but will need to check overlays

/* This configures nixpkgs.overlays to include our overlays/ directory.
 */
let path = ../overlays; in with builtins;
map (n: import (path + ("/" + n)))
      (filter (n: match ".*\\.nix" n != null ||
        pathExists (path + ("/" + n + "/default.nix")))
          (attrNames (readDir path)))
