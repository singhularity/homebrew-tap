class Migrataur < Formula
  desc "3-tier code migration agent"
  homepage "https://migrataur.com"
  version "0.8.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-darwin-arm64.tar.gz"
      sha256 "fcbf6e12255195736c794ad131406cf2d7e603b116b534d26b92b8a0c340df27"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-darwin-x64.tar.gz"
      sha256 "fcde28ea9ea35212af36d38f680fbdc04a0193fc264e2a5194d31ccb113f80fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-linux-arm64.tar.gz"
      sha256 "36deb7f7003f765159cc3acf2dab3aa779872d2fc13021cf221af73ccf7e9382"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/migrataur/v0.8.8/migrataur-v0.8.8-linux-amd64.tar.gz"
      sha256 "425c959588293908bc98e38ef00c3403eb40d3b22f14770d40e36ea5b921ff34"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
