class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.5/ids-v0.4.5-darwin-arm64.tar.gz"
      sha256 "81a1ee1262c87d45d889998c814f3c170d987fa82dfa12c0c6859ac552560426"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.5/ids-v0.4.5-darwin-amd64.tar.gz"
      sha256 "6a4eea04808bc8d45a8b6ca73cc7590ac643b5d247d4dcc10daecfbf0f16c7e5"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
