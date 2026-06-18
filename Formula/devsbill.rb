class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.1/devsbill-v0.5.1-darwin-arm64.tar.gz"
      sha256 "f9b8bdd3da4a5064fcb70e067b0f0aadf006d121b44ed447c55853b15a38d03a"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.1/devsbill-v0.5.1-darwin-x64.tar.gz"
      sha256 "9f32a7b2e93319a6009dbccb4ab909004e5ca0d64337b1e8eb96e40374438495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.1/devsbill-v0.5.1-linux-arm64.tar.gz"
      sha256 "47f02a05953bb43b93c0000af7f75d826304684375726490a60089de98528be0"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.1/devsbill-v0.5.1-linux-amd64.tar.gz"
      sha256 "3bb564b1407e0623570c6af3da2c3889ec54bcb2f3e186a52991b39596ca7551"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
