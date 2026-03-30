class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://indieprise.com"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.0.1/devsbill-v0.0.1-darwin-arm64.tar.gz"
      sha256 "2d30e37e1174251627e5425ba79cf07e165db54d440a386f0191ba3efb00faae"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.0.1/devsbill-v0.0.1-darwin-amd64.tar.gz"
      sha256 "d85c313c1751da8655b525749a6993035e02e54ff6ae8181eb6e5b9f09d37cee"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
