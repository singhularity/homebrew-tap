class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.6/migrataur-v0.8.6-darwin-arm64.tar.gz"
      sha256 "3bd281d84fcfc256c95f2bea18aa84f13a2fac8ea96b5272bd4fc9e43aa15690"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.6/migrataur-v0.8.6-darwin-x64.tar.gz"
      sha256 "e5e426ae2643f453f754da257c61d71ea6ff56ed4d17914e683e91b71319839d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.6/migrataur-v0.8.6-linux-arm64.tar.gz"
      sha256 "858bd3ca3e2581638cca4eded4b24c7b2524fe39f4cd89f38beebd1e740ea927"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.6/migrataur-v0.8.6-linux-amd64.tar.gz"
      sha256 "db0e239110f9bbf6c2f3c4ab646f5e1a2c99215c641f2454f61ab2e4cbd7f41c"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
