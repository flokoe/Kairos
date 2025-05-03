import 'init.just'

# List all recipes by default
[private]
default:
    @just --list

# Build the app using flatpak-builder
build:
    flatpak-builder --force-clean --build-only build-dir de.flokoe.Kairos.json

# Build and run the app using flatpak-builder
dev: build
    flatpak-builder --run build-dir de.flokoe.Kairos.json kairos

# Install the app using flatpak-builder
install:
    flatpak-builder --user --force-clean --install build-dir de.flokoe.Kairos.json
