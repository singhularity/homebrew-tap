class Keepmesane < Formula
  desc "Claude Code session manager"
  homepage "https://indieprise.com"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/keepmesane/v0.0.1/keepmesane-v0.0.1-darwin-arm64.tar.gz"
      sha256 "ea557057c8c14133aa1f5f18bbee8bd83a214ce1b76e74df81c794d936955aac"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/keepmesane/v0.0.1/keepmesane-v0.0.1-darwin-amd64.tar.gz"
      sha256 "124dc81a4329d97b55f3ed6db08b7fbfea1833a652e0f56932c9f17837d8fa40"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
