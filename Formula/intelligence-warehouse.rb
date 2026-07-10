class IntelligenceWarehouse < Formula
  desc "Cross-project intelligence engine — an Obsidian 'brain' vault for Claude & Codex"
  homepage "https://github.com/singhularity/intelligence-warehouse"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.0/intelligence-warehouse-v0.3.0-darwin-arm64.tar.gz"
      sha256 "6845b5182090356b39f1aa5dd4f93853e28440ae5e99889261cbb1f4222b7b88"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.0/intelligence-warehouse-v0.3.0-linux-amd64.tar.gz"
      sha256 "7d7678578d1f42299e5b24c72d8d6f05a0288a38aaa38570e72d524855227c7b"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
