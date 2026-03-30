class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://indieprise.com"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.0.1/migrataur-v0.0.1-darwin-arm64.tar.gz"
      sha256 "15c5f281fb39229851c619751bd8b3742ef863b12f47c1602fc30b961cf278c3"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.0.1/migrataur-v0.0.1-darwin-amd64.tar.gz"
      sha256 "1e7b8f3b390f5353ca7acc6cedf9671cd40d23404fce2d1121bb598b9703ce4e"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
