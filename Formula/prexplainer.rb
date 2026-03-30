class Prexplainer < Formula
  desc "Code explainer and tour generator"
  homepage "https://indieprise.com"
  version "0.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.0.0/prexplainer-v0.0.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.0.0/prexplainer-v0.0.0-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.0.0/prexplainer-v0.0.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.0.0/prexplainer-v0.0.0-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
