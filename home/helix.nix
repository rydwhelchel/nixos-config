{ pkgs, lib, ... }:
{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      theme = "ayu_evolve";
    };

    languages = {
      language-server.jdtls = {
        command = "jdtls";
        args = [
          "-data"
          "~/.cache/jdtls/workspace"
        ];
      };

      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "nixfmt";
          };
        }
        {
          name = "java";
          scope = "source.java";
          file-types = [ "java" ];
          roots = [
            "pom.xml"
            "build.gradle"
            ".git"
          ];
          language-servers = [ "jdtls" ];
        }
      ];
    };
  };
}
