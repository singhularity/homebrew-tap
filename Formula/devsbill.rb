class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-darwin-arm64.tar.gz"
      sha256 "1223a034182ebc1acc1124a7575244c9ccb17e4b71ebe72760ecd16149922cbf"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-darwin-x64.tar.gz"
      sha256 "734dcd50b62e00f40b5274ec2bae81bc611ae7bb9c27b3932fb7d73ce3e4440f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-linux-arm64.tar.gz"
      sha256 "6025aa894ae06c01b45d1358a62e54b0f11efee5b6d3280424d9ad79cfc3a2e0"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-linux-amd64.tar.gz"
      sha256 "68028c379d4d65012541126cb46ab0e7a60d3a229b3a16e62dd3baa5a6779b50"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
