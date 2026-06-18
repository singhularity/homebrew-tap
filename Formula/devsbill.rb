class Devsbill < Formula
  desc "Multi-cloud cost tracker with IaC scanning"
  homepage "https://devsbill.com"
  version "0.5.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.2/devsbill-v0.5.2-darwin-arm64.tar.gz"
      sha256 "efefcfc0972ddeb053767c8df336ffaaba36627b176806a98b2e6e3d67341a68"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.2/devsbill-v0.5.2-darwin-x64.tar.gz"
      sha256 "c0bf8b08315b04c7fa22880bffc3bb5e31bafc0c19356fc0f6247206783a562f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.2/devsbill-v0.5.2-linux-arm64.tar.gz"
      sha256 "4035edc26bc54c2150992b90ffa69900c69467f872e78ca21de0b4d91f58925c"
    else
      url "https://pub-6960894e747c4eacaf9e78494e0c9286.r2.dev/devsbill/v0.5.2/devsbill-v0.5.2-linux-amd64.tar.gz"
      sha256 "151a06c81e35a306da70afba5ff9ed68eeff4df286d352e3792bcf752786dd29"
    end
  end

  def install
    bin.install Dir["*"]
    bin.install_symlink "dbill" => "devsbill"
  end
end
