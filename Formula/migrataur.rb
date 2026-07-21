class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.9/migrataur-v0.8.9-darwin-arm64.tar.gz"
      sha256 "6d7b3e30c5cf6645683a629ec1de0a9d7dbf2e0042312d2bb01968db6993e3af"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.9/migrataur-v0.8.9-darwin-x64.tar.gz"
      sha256 "118afc67decfe94696e0711b956a491a9b94d3f29f1fc2204dbb0b8d786cfd5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.9/migrataur-v0.8.9-linux-arm64.tar.gz"
      sha256 "93d53c865f7d161a4e2b5daad331d5d85c04441e0ea957a8aa191266e9d9047f"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.9/migrataur-v0.8.9-linux-amd64.tar.gz"
      sha256 "8d2a58001ae0b9c9431666850d95327f4c1af7b077d7efff2e51743ed81d65e7"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
