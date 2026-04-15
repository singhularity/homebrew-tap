class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://indieprise.com"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.4.5/devsbill-v0.4.5-darwin-arm64.tar.gz"
      sha256 "1a74336211d17a4a7a815ed4c68ebea8c11a30a05b7a0db76ec9466c170f2952"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.4.5/devsbill-v0.4.5-darwin-amd64.tar.gz"
      sha256 "9d34fdad2e23ae0bed91d299a4e1e7d7bcff0cd60b9757213c9716bdd31c13bb"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
