class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.7/migrataur-v0.8.7-darwin-arm64.tar.gz"
      sha256 "30460237045d0f0ecfa2d16fc759d54e53b728a8a26c89dfbe4a70d4a3ef42cc"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.7/migrataur-v0.8.7-darwin-x64.tar.gz"
      sha256 "7156d9431082ef390625b046143d9cb9490dd46f1763c4ed5818b331d5cd37fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.7/migrataur-v0.8.7-linux-arm64.tar.gz"
      sha256 "ff7e47b991e2e21bf1ab19be2950b8a396bb17af3e3ef09040c54b0d04f13ae8"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.7/migrataur-v0.8.7-linux-amd64.tar.gz"
      sha256 "7155341c8c5413b4c127ea4b2754828e16c619899a6576b47ba603ea6d4bb098"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
