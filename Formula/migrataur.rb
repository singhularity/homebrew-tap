class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-darwin-arm64.tar.gz"
      sha256 "5ac40f926476288598f4ed5a47d62d402f4306d7b601db3c6f3a0c2c5071c2e2"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-darwin-x64.tar.gz"
      sha256 "b9c69d8d773fb4f755268b93bc5eedd9e0a4929649f8941445c79a0b23d90cdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-linux-arm64.tar.gz"
      sha256 "9386a047bc70c0b4760d21183b79a3b8baea53689c3e3fb859a23b95e828f286"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-linux-amd64.tar.gz"
      sha256 "49ba51dbc6ff17bff5f36e4054ff6b3e275b9db71e3a42ee980bc2b7546e121b"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
