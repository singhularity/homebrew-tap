class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.0.1/ids-v0.0.1-darwin-arm64.tar.gz"
      sha256 "c2b55fdf292de9f1d73c4b2154a88da8b10f22a5a71e62767f9e8a2e89a4629a"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.0.1/ids-v0.0.1-darwin-amd64.tar.gz"
      sha256 "1695f590105ff56d5dfead9b68485197fb71e8cecfa7649cd309b406515b709f"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
