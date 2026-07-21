class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.7/devsbill-v0.5.7-darwin-arm64.tar.gz"
      sha256 "296134adb5f122aab325775b9dc89c3889bbd946cf9486cf9d753b6b8af1e8fc"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.7/devsbill-v0.5.7-darwin-x64.tar.gz"
      sha256 "5e996a0f9a53affc4a87d3d8e81822329905c7bdf08c539b14e27ebc59e2711c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.7/devsbill-v0.5.7-linux-arm64.tar.gz"
      sha256 "7143fbb13645c275921d3076224728dea7af40021b9e6f912507581d30c34141"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.7/devsbill-v0.5.7-linux-amd64.tar.gz"
      sha256 "5466cc673773028e1c84462650bc9651d76f190f4800ca60957b139821a3a494"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
