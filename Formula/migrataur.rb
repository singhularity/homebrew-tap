class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.5/migrataur-v0.8.5-darwin-arm64.tar.gz"
      sha256 "dd7c483b316ba17acb4f014b23177571639ea80498acbf15ba0753d3f5c3a8f2"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.5/migrataur-v0.8.5-darwin-x64.tar.gz"
      sha256 "a9e33c34fdb04d0cee54b02bdfde00a9d38c6b5120407c4a3e7c34049a9028d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.5/migrataur-v0.8.5-linux-arm64.tar.gz"
      sha256 "3334eeb53a395e2649d1502213e5c1c42dfe73401e16e72c549c48bc41a45c8e"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.5/migrataur-v0.8.5-linux-amd64.tar.gz"
      sha256 "4a2bc2ca818f68a65ce72a5dbf2f80c2318fb6499855c83e74170331806298e6"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
