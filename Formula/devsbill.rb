class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-darwin-arm64.tar.gz"
      sha256 "501d39d2d25574f146f6e12d46d9957d6bed6585dabff771eaeaef9d18a6cc25"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-darwin-x64.tar.gz"
      sha256 "31a6c86385b63a6911bc45eaef58d18908dccee795b8069d9a204f9ab7a4a183"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-linux-arm64.tar.gz"
      sha256 "464f209ced63278e308df383214236a90eb7d1f6c77e627357c49a1659faf27a"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.6/devsbill-v0.5.6-linux-amd64.tar.gz"
      sha256 "81249f95b942bfbf03113251c53d55a9ee3ca08fcd6613aca597ebf92987d94b"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
