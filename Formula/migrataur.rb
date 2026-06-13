class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.0/migrataur-v0.8.0-darwin-arm64.tar.gz"
      sha256 "035e32c3acef9b22a320ef86f04f14c5ea82b990083eb9d85ba8a403ee935714"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.0/migrataur-v0.8.0-darwin-x64.tar.gz"
      sha256 "2ca84941cf07d35e95ae2c2a674b007ea7b559db444980bce2ab8a77262488b8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.0/migrataur-v0.8.0-linux-amd64.tar.gz"
      sha256 "bd9f8011b47af70ff5c3d4dffaf85a25c438cd1789f1395f1d09ae4ed36330c0"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
