class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.2/migrataur-v0.8.2-darwin-arm64.tar.gz"
      sha256 "d83097167cd4bcd193e0674e17473d773433ea3e80255c3a94a7121ebeb92bd2"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.2/migrataur-v0.8.2-darwin-x64.tar.gz"
      sha256 "faba28ec31b4a3a940c02509f1333656a03c912651afafe44eb4851189fe052e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.2/migrataur-v0.8.2-linux-amd64.tar.gz"
      sha256 "49e99cd0fe26be255949e21a060a2b8410aedcec5380081ee6a1d1c5b03cd80a"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
