# homebrew-eijii

Release storage for eijii binaries (DMG, JAR).

This repository hosts GitHub releases for the eijii app. It is **not intended to be tapped directly** by users.

## For users

To install eijii, use the [homebrew-apps](https://github.com/acyclic-eu/homebrew-apps) tap:

```bash
brew tap acyclic-eu/apps
brew install --cask eijii
```

## For maintainers

This repo stores release artifacts:
- `alpha` tag: latest alpha build
- `beta` tag: latest beta build  
- `vX.Y.Z` tags: versioned releases

Formulas in [homebrew-apps](https://github.com/acyclic-eu/homebrew-apps) point to these releases.
