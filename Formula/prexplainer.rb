class Prexplainer < Formula
  desc "Code explainer and tour generator"
  homepage "https://indieprise.com"
  version "0.8.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.8.2/prexplainer-v0.8.2-darwin-arm64.tar.gz"
      sha256 "83fc904f9f3eb664815f87afea437e552f3edac4f3b6b3d453c27a25ad0b043d"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.8.2/prexplainer-v0.8.2-darwin-amd64.tar.gz"
      sha256 "8675350f8e4564dc1685144f0ca58e646cd6559677524f56ef25b6b52b4ac7b9"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
