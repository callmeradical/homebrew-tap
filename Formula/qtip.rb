class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.5.1"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_darwin_arm64.tar.gz"
      sha256 "a2b836a9b7eb0e4f05834901df0f5c4d2bc9c5ee3da2f6d749fdf927389caacf"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_darwin_amd64.tar.gz"
      sha256 "91a96cbf36f986a2856799bf067f579a8e5c1e6fdc30ccfcf82386933881f31e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_linux_arm64.tar.gz"
      sha256 "9ed20aa76d2bece64fbf36ddad199bc1d1d5cf6c8ebcba484070d04c8bd3576a"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_linux_amd64.tar.gz"
      sha256 "724700bec2693b1d56788aef5ecd8f6824d0997ac5986d13c9e2a9f581401ce2"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
