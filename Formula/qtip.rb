class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.5.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.0/qtip_darwin_arm64.tar.gz"
      sha256 "c2eee4244000cbd6dfe5365278391f6542b5adaa62534557f91464e2e218ef6b"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.0/qtip_darwin_amd64.tar.gz"
      sha256 "54bfaa240501ad5db0e60b984d274d08651105097f1499964049d742919a72b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.0/qtip_linux_arm64.tar.gz"
      sha256 "065ee765d758ba917238a9525f15ba99afe030f6c710096e64dd03181c87edce"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.0/qtip_linux_amd64.tar.gz"
      sha256 "23073cf09258c8e0f45bc0cfd58156283496b7ed009f5a2fcc5f7d1833de9281"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
