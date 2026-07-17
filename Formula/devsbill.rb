class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.5/devsbill-v0.5.5-darwin-arm64.tar.gz"
      sha256 "946676b8605e6079a02cabd9c06baa116a024c7f520d4fc4f4c9664b2a48883d"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.5/devsbill-v0.5.5-darwin-x64.tar.gz"
      sha256 "7122a616f9a5e171c3b2f47dd5dc75c9e937bbf6c3d53e049bdbd6e8eb667ef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.5/devsbill-v0.5.5-linux-arm64.tar.gz"
      sha256 "fa1b8d9a28a16950d993f8044ff9610d354c287692ee56c8708c506eb5459a87"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.5/devsbill-v0.5.5-linux-amd64.tar.gz"
      sha256 "bfa36d2db17a021d194f31904fd2c917ad11919910189aa4efb64e1dc96ff3e1"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
