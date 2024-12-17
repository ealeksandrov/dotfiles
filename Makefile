default: help

setup: # Install everything.
setup: \
	macos \
	bootstrap \
	symlink
	$(info Setup completed successfully!)

macos: # Run macOS setup script.
	./macos.sh

bootstrap: # Run bootstrap script (installs Homebrew, shell plugins).
	./bootstrap.sh

symlink: # Create symlinks for configs.
	./symlink.sh

help:
	@echo "Available commands: \n"
	@grep -E '^[a-zA-Z0-9 -]+:.*#' $(MAKEFILE_LIST) | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: help setup macos bootstrap symlink
