class IntelligenceWarehouse < Formula
  desc "Cross-project intelligence engine — an Obsidian 'brain' vault for Claude & Codex"
  homepage "https://github.com/singhularity/intelligence-warehouse"
  version "0.3.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.1/intelligence-warehouse-v0.3.1-darwin-arm64.tar.gz"
      sha256 "077a264813a17b9d20c5f1408518b0027d5ff9a29136fd3caa5da9758c158de6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/intelligence-warehouse/v0.3.1/intelligence-warehouse-v0.3.1-linux-amd64.tar.gz"
      sha256 "f432303df17266813fbfb624d22d8648b04d8a4197ad91639dc87b5d59106852"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
