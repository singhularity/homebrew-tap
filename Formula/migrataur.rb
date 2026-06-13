class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.1/migrataur-v0.8.1-darwin-arm64.tar.gz"
      sha256 "0b22475e9123aaef2779540de65541c4f442f2a868526494fe4a1731f73517c4"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.1/migrataur-v0.8.1-darwin-x64.tar.gz"
      sha256 "da46919de3b9ea3cf304a06abf367747eed4b90c3972e85af898dbea58a05fd6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.1/migrataur-v0.8.1-linux-amd64.tar.gz"
      sha256 "1678d6b6ba3e93a20876c26f6df8434105e4a4c98897427cd3c7d443b90a0ef6"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
