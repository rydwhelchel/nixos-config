{ lib, pkgs, ... }:
{
  # Tell home-manager to deal with itself
  programs.home-manager.enable = true;

  imports = [
    ./helix.nix
    ./git.nix
    ./i3.nix
    ./ghostty.nix
    ./zsh.nix
  ];

  home = {
    packages = with pkgs; [
      # Git
      git
      # Make
      gnumake

      # TODO: Handle some language stuff with direnv and dev shells instead?
      ## Languages, LSP, formatters, linters ##
      # Nix LSP
      nil
      # Nix formatter
      nixfmt-rfc-style
      # Java 23
      # zulu23
      # Java LSP
      # jdt-language-server
    ];

    username = "ryan";
    homeDirectory = "/home/ryan";

    # I ain't changin this
    stateVersion = "24.11";
  };
}
