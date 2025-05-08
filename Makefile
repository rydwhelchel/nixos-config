.PHONY: vm
vm:
	sudo nixos-rebuild switch --flake .#vm

.PHONY: home
home:
	home-manager switch --flake .#ryan

.PHONY: clean
clean:
	nix-collect-garbage -d
