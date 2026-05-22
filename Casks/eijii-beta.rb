cask "eijii-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/beta/eijii-mac.dmg"

  name "eijii (beta)"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/eijii/download/beta"

  app "eijii.app"

end
