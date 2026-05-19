cask "eijii" do
  version "1.0.11"
  sha256 "cb017588d0eee3f5568aa0c21344aa593a844a569d963b8c5c450acc692feebe"

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
