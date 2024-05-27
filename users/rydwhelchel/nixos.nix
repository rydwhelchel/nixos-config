{ pkgs, inputs, ... }:

{
  # Add ~/.local/bin to PATH
  environment.localBinInPath = true;

  programs.zsh.enable = true;

  users.users.rydwhelchel = {
    isNormalUser = true;
    home = "/home/rydwhelchel";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$y$j9T$Y0bKLuz0pdFU2dxoSI/IJ0$8cuu2TUkfQOV2BPAf4wD6XPawmoM8jwgKhoe4dsrUzB";
  };

  # nixpkgs.overlays = import ../../lib/overlays.nix ++ [
  #   (import ./vim.nix { inherit inputs; })
  # ];
}
