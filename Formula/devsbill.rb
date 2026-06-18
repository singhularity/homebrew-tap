class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://indieprise.com"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.0/devsbill-v0.5.0-darwin-arm64.tar.gz"
      sha256 "8e1253b949f39c72556a75af9d1ebe41ea218641e91b23d47b703d3b5dfbfa05"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.0/devsbill-v0.5.0-darwin-x64.tar.gz"
      sha256 "a7f06c841aee1d31ad3649300372165f4ba4ee184f1bff937e439631089ed8d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.0/devsbill-v0.5.0-linux-arm64.tar.gz"
      sha256 "4a9b2024c9e4f0e1abedce9d409309c468123642e3cd608ee661a0134a621e46"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.0/devsbill-v0.5.0-linux-amd64.tar.gz"
      sha256 "d8aa0f68efecb396c29f801d5dcfafc8da918cfbbe6093233a00c77315341c28"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
