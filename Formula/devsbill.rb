class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.4/devsbill-v0.5.4-darwin-arm64.tar.gz"
      sha256 "0a1ed87ab5430b988851ffbc1c37c181363799f6e56b02323706deb281faa97e"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.4/devsbill-v0.5.4-darwin-x64.tar.gz"
      sha256 "4a09e447ebe6c946915660c43c46902a9d3508472c0a91e889f47c75e91314ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.4/devsbill-v0.5.4-linux-arm64.tar.gz"
      sha256 "a2727b5a393179809c67bf4aade9f8e88ed78ee6486d5618d205e7ca77a69f0c"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.4/devsbill-v0.5.4-linux-amd64.tar.gz"
      sha256 "abc63da0e408aff35ed4af68aacffeca77ca5e59b0a585f1480188fb80628674"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
