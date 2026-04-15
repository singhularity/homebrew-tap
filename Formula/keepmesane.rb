class Keepmesane < Formula
  desc "Claude Code session manager"
  homepage "https://indieprise.com"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/keepmesane/v0.4.5/keepmesane-v0.4.5-darwin-arm64.tar.gz"
      sha256 "3e77bb0414a00f5607e8fbfe6e4f7e44fea70ce8dae23123111e762732f795c8"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/keepmesane/v0.4.5/keepmesane-v0.4.5-darwin-amd64.tar.gz"
      sha256 "82befd5004a2e7943c24a54fbedf30eb0c9dcd0a97c7897db08cd204114668f6"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
