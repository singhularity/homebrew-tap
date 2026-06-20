class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.3/devsbill-v0.5.3-darwin-arm64.tar.gz"
      sha256 "4aeb696f2119fefc024af72ee8e93c30249910dc24d1339fde6b1169cb494f10"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.3/devsbill-v0.5.3-darwin-x64.tar.gz"
      sha256 "2c9ebcdb188190cff6083a4794ab4551af05de2e3c482826f22d059b328dc60d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.3/devsbill-v0.5.3-linux-arm64.tar.gz"
      sha256 "c7c8502bf1d312fad666b6d539f0db8744f732cbb8515e0138b113d5a075232a"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.3/devsbill-v0.5.3-linux-amd64.tar.gz"
      sha256 "c7ef292b8fb5ca5760b9a11d763255c294e58b79668e3e090227d6fb5b594b59"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
