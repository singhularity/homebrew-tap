class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.4.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.4/ids-v0.4.4-darwin-arm64.tar.gz"
      sha256 "9a8c48a1dd7a8ee0ea06fb50a6384b35ae0929abcef9b2e4cfbfcb1aab05f244"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.4/ids-v0.4.4-darwin-amd64.tar.gz"
      sha256 "e18c1ee38a4ceba6320f1f614dad1f5585b417660d7c49f473df4d4202527944"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
