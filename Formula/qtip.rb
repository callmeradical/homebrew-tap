class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.3.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.3.0/qtip_darwin_arm64.tar.gz"
      sha256 "0ceb26089c4c55e5b765b43713f4159e9f32272681aef5bcbcf9c6721228f030"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.3.0/qtip_darwin_amd64.tar.gz"
      sha256 "460e8b95891825fa4f94f664cb7bec3cebcef6a0d5e3d6b5876d29db3c036906"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.3.0/qtip_linux_arm64.tar.gz"
      sha256 "e249eebc36dbe4ba3faac0db77acbb2342d91676472d84ae3b0cf978626dafa2"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.3.0/qtip_linux_amd64.tar.gz"
      sha256 "8582c09d63b65fcd3aa9ee65f7e9753f38d3b3bb1742b0776cb4e3b95738233c"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
