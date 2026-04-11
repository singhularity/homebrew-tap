class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.4.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.2/ids-v0.4.2-darwin-arm64.tar.gz"
      sha256 "7c43a8e08f027a550fa2e5416f3ef3516168c88cc2a5068fe2a982f7fcb835ae"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.2/ids-v0.4.2-darwin-amd64.tar.gz"
      sha256 "313ea9cee810ff8d13b3c1ca363682603f89ecaeccf002a8761492b57516fa81"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
