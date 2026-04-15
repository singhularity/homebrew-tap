class Prexplainer < Formula
  desc "Code explainer and tour generator"
  homepage "https://indieprise.com"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.4.5/prexplainer-v0.4.5-darwin-arm64.tar.gz"
      sha256 "89c6bfd1398768b0266fbc41db532fafcc22550d59b69d62b4ec69b30682bba9"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/prexplainer/v0.4.5/prexplainer-v0.4.5-darwin-amd64.tar.gz"
      sha256 "122614e7626fea9e647b9a1affe9aa5adc0b17df5ae8bc27b1b56de5016fdd65"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
