# Homebrew Tap for ONIWA

Homebrew Cask distribution for [ONIWA](https://github.com/hiro259/oniwa), a free, open-source macOS menu bar app that lets you search for and switch native macOS Spaces by name.

## Install

For Homebrew versions that require explicit trust of third-party taps, register the tap and trust **only the ONIWA cask** before installing:

```sh
brew tap hiro259/tap
brew trust --cask hiro259/tap/oniwa
brew install --cask hiro259/tap/oniwa
```

`brew trust` authorizes Homebrew to load the selected third-party cask definition. Only do this if you trust the publisher and have reviewed the [cask definition](Casks/oniwa.rb). The trust step is required on some current Homebrew setups; it does not bypass macOS Gatekeeper or Apple notarization.

Homebrew fetches the official Apple-notarized DMG from [ONIWA GitHub Releases](https://github.com/hiro259/oniwa/releases/latest), checks its SHA-256 checksum, and installs `ONIWA.app` into Applications.

**Requirements:** Apple Silicon Mac and macOS 13 (Ventura) or later for the current v0.1.1 release. ONIWA uses macOS Accessibility permission and the Mission Control `Control+Left/Right` Space-switching shortcuts.

After installation, start ONIWA from Applications and follow its Accessibility setup guide. Open the search palette with `Option+Space` (default shortcut).

### Existing DMG installation

If you already installed ONIWA by dragging it from a DMG, **quit ONIWA first**. Homebrew may refuse to install while `/Applications/ONIWA.app` already exists outside Homebrew management. Move the existing app bundle out of Applications before installing with Homebrew. Keep a copy until the Homebrew installation works. You may need to reauthorize the new app under **System Settings → Privacy & Security → Accessibility**.

## Update

```sh
brew update
brew upgrade --cask hiro259/tap/oniwa
```

To uninstall the app (without automatically removing your user data):

```sh
brew uninstall --cask hiro259/tap/oniwa
```

## Maintainer: publish a new ONIWA version

1. Publish a **signed, notarized, stapled** `ONIWA-vX.Y.Z-macos.dmg` in [ONIWA Releases](https://github.com/hiro259/oniwa/releases). Do not publish notarization submission archives as final downloads.
2. Obtain the SHA-256 of the *published DMG* (for example, from GitHub's asset digest, or by running `shasum -a 256` on the final file).
3. Update `version` and `sha256` in [`Casks/oniwa.rb`](Casks/oniwa.rb). The download URL includes the version automatically.
4. Validate with Homebrew and test installation or upgrade on a Mac before announcing the update.

The Cask intentionally has **no uninstall-time deletion of preferences or other user data**, and no privileged scripts. It installs the same DMG available through GitHub Releases.

## Links

- [ONIWA source code and documentation](https://github.com/hiro259/oniwa)
- [Latest ONIWA release](https://github.com/hiro259/oniwa/releases/latest)
- [Issues and support](https://github.com/hiro259/oniwa/issues)
