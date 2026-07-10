class IntelligenceWarehouse < Formula
  desc "Cross-project intelligence engine — an Obsidian 'brain' vault for Claude & Codex"
  homepage "https://github.com/singhularity/intelligence-warehouse"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.0/intelligence-warehouse-v0.3.0-darwin-arm64.tar.gz"
      sha256 "4dca45278e4b196b8e17681563a763580b7430c98e898f35cf2a17c2b855ee00"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.0/intelligence-warehouse-v0.3.0-linux-amd64.tar.gz"
      sha256 "79a2838b3b6b0eaad3b4580c75486e67c9bc1b952a9357d42fc4a4b690558cc9"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
