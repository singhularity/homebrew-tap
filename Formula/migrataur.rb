class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.4/migrataur-v0.8.4-darwin-arm64.tar.gz"
      sha256 "9b5599edd75fd620f9cfe0e96505c8b07be6c35313e2f83c78e88e76dd0f449d"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.4/migrataur-v0.8.4-darwin-x64.tar.gz"
      sha256 "3fb56d4f7544f8219dd454582c2635aed31a16f875f984aa13b5d2714d26dfcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.4/migrataur-v0.8.4-linux-arm64.tar.gz"
      sha256 "369b80bc8c504125451a7afcc0615127347145212a049949a6327ae5e99d4a45"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.4/migrataur-v0.8.4-linux-amd64.tar.gz"
      sha256 "67fca3b2c6aaf98a54205eb7ea8b1f87c2584ec7b8be9c9c196e5f69c535f57c"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
