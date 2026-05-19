class EijiiTui < Formula
  desc "eijii TUI and daemon - AI agent session manager"
  homepage "https://acyclic.eu/eijii"
  version "1.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-tui-macos-arm64"
      sha256 "aad63df43dd0f897352bcb58e761aa9bad89dc80339d64227ed0a6043b7d9070"
    end
  end

  resource "daemon" do
    url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-daemon.jar"
    sha256 "582769d63935096f7179eac2c196ab5ab4610afc2b870db1d553ce2b2cbd400f"
  end

  depends_on "openjdk@21"

  def install
    bin.install "eijii-tui-macos-arm64" => "eijii-tui"

    resource("daemon").stage do
      libexec.install "eijii-daemon.jar"
    end

    # Wrapper so `eijii server` works from the CLI
    (bin/"eijii").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/eijii-daemon.jar" "$@"
    SH
  end

  test do
    output = shell_output("#{bin}/eijii-tui --version 2>&1", 1)
    assert_match "eijii", output
  end
end
