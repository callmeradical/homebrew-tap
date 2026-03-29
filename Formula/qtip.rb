class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.6.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.6.0/qtip_darwin_arm64.tar.gz"
      sha256 "2ac32663c9fec8c947066b501d6d83d50e71880c569b3081dee8e204916f4e02"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.6.0/qtip_darwin_amd64.tar.gz"
      sha256 "1c268a2a92be18d23e53b4ef59a652fdbd596a0b0a2855323420629994906c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.6.0/qtip_linux_arm64.tar.gz"
      sha256 "7cd05c4b47eab6923e16e92c67a6482c377ef351aab35d28d821cc221e3215bc"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.6.0/qtip_linux_amd64.tar.gz"
      sha256 "1e64185743dc51ab631468377646cb72c58133f3f5e1a0f87923b43e63a66138"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
