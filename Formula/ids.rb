class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.4.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.3/ids-v0.4.3-darwin-arm64.tar.gz"
      sha256 "1745830c3ab39a5be3daa1e22717df413b3ac6a24bf02324ce69787c7f1f5334"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.3/ids-v0.4.3-darwin-amd64.tar.gz"
      sha256 "7a97aca706fd9bb0911b919c637c4f62ae19aa76b22fefd62886982dc5b0fdc2"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
