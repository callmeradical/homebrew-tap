class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.5.2"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.2/qtip_darwin_arm64.tar.gz"
      sha256 "ee0ee3ffa66eb7a630b1ce686ee006784c41380109e27ca133e721f57a9577e9"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.2/qtip_darwin_amd64.tar.gz"
      sha256 "77edfa368e98dfa309321e888c0029579f574a3296ce0253ff8049ec040db27e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.2/qtip_linux_arm64.tar.gz"
      sha256 "ce8b188f257318ad22536ffe028340ebb326d4a8e1c5ab9c62a0ef8e7d8501c6"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.2/qtip_linux_amd64.tar.gz"
      sha256 "474fb4c0721323d04a365add261e04508ddfad4fbf5562819a09b315e310ca89"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
