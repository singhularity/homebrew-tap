class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://indieprise.com"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.4.5/migrataur-v0.4.5-darwin-arm64.tar.gz"
      sha256 "f8ea0e375b40ca19c8ddcf1a04e4cbe43de28ae52e392288b561a229ed23c8e1"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.4.5/migrataur-v0.4.5-darwin-amd64.tar.gz"
      sha256 "fc438d54b4e99b57a5184c8ef7ba2b94cdcdb3f15565ca7e663876cc96fb0409"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
