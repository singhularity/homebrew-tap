class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.3/migrataur-v0.8.3-darwin-arm64.tar.gz"
      sha256 "a71e03a98d0464c459686d97318aa01b75cdee2e89592010fa759bedfe639ad4"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.3/migrataur-v0.8.3-darwin-x64.tar.gz"
      sha256 "06e1e2185c6e6ee0b3bbc12f4174bc8a3fc92ee1892325038453525150f2e890"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.3/migrataur-v0.8.3-linux-arm64.tar.gz"
      sha256 "8099521dbc75f0bd2f08f9277e6d0e7f2ae40ebf9b92087dc7eceb425ae0c401"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.3/migrataur-v0.8.3-linux-amd64.tar.gz"
      sha256 "d68b18beff3e7657b838bbb1aa7363c1de710d2fd2730b6ae9348357219eae10"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
