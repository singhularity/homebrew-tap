class Ids < Formula
  desc "Portfolio operations platform for serial builders"
  homepage "https://indieprise.com"
  version "0.4.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.1/ids-v0.4.1-darwin-arm64.tar.gz"
      sha256 "471224770407b8084decaca89201b2a2a0254b50045093e0f741ab593a044568"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/ids/v0.4.1/ids-v0.4.1-darwin-amd64.tar.gz"
      sha256 "92efaf8f1cf1062f057a699e33728ca1c78011b17e45a271130689500fd75da7"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
