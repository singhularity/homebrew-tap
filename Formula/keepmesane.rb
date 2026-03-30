class Keepmesane < Formula
  desc "Claude Code session manager with permission gateway"
  homepage "https://indieprise.com"
  version "0.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-508609135146446e8f26cb60c3330e02.r2.dev/keepmesane/v0.0.0/keepmesane-v0.0.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://pub-508609135146446e8f26cb60c3330e02.r2.dev/keepmesane/v0.0.0/keepmesane-v0.0.0-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-508609135146446e8f26cb60c3330e02.r2.dev/keepmesane/v0.0.0/keepmesane-v0.0.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://pub-508609135146446e8f26cb60c3330e02.r2.dev/keepmesane/v0.0.0/keepmesane-v0.0.0-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
