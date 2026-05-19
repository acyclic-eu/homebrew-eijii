cask "eijii" do
  version "1.0.10"
  sha256 "f7034336abd2c9ccfe37c337f9cf1380ea798417fe2db1e27f0b9250e8a35ecd"

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-mac.dmg"

  name "eijii"
  desc "AI agent session manager"
  homepage "https://acyclic.eu/eijii"

  app "eijii.app"

  zap trash: [
    "~/.eijii",
    "~/Library/Application Support/eijii",
    "~/Library/Logs/eijii",
  ]
end
