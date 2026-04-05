class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.7.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.7.0/qtip_darwin_arm64.tar.gz"
      sha256 "554c56496d176bf590c946443d4eeb3a8e9291b63e585064bcdd198f5c34f9ee"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.7.0/qtip_darwin_amd64.tar.gz"
      sha256 "691c5ea9a41b502810f9ff685f7268a3d886cdd7214b0fe76aa6930672028472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.7.0/qtip_linux_arm64.tar.gz"
      sha256 "685cd98a3b07cd9408d0bacb05616e188c12b5d20758ea70455f314ae65154c3"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.7.0/qtip_linux_amd64.tar.gz"
      sha256 "0671eada5704840e01a623b8af48366b2244435e315a5fee9d627b8baacf3ed7"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
