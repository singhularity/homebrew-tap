class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.7.0/migrataur-v0.7.0-darwin-arm64.tar.gz"
      sha256 "3aacd03a3c4e80d6f236ec5bf29c64870508682bec8ce31aa9aeaebf068bace8"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.7.0/migrataur-v0.7.0-darwin-x64.tar.gz"
      sha256 "44110dc6f491d7b4e452adce93d812330680a3ea9b51417bb49e2fb15e7668c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.7.0/migrataur-v0.7.0-linux-amd64.tar.gz"
      sha256 "f2fa94d8709f3e915a470a510c43c01b562c3042e188916425ff46202e06ef11"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
