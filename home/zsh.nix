{ pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    # enableCompletions = true;
    # autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    shellAliases = {
      lsa = "ls -a";
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [

      ];
      theme = "jonathan";
    };

    zplug = {
      enable = true;
      plugins = [
        # { name = "zsh-users/zsh-autosuggestions"; }
        # { name = "zap-zsh/supercharge"; }
        # { name = "zap-zsh/zap-prompt"; }
        # {
        #   name = "romkatv/powerlevel10k";
        #   tags = [
        #     "as:theme"
        #     "depth:1"
        #   ];
        # }
      ];
    };
  };
}
