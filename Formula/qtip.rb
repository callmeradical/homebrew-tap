class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.4.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.4.0/qtip_darwin_arm64.tar.gz"
      sha256 "0dcfab3ce64c320038c23a516cb7722cc146704d600b147a951ab63b5aca01eb"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.4.0/qtip_darwin_amd64.tar.gz"
      sha256 "cda18b199f482d7cc38f0dc0100853b72cab1c8944503f90a04466293647ed04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.4.0/qtip_linux_arm64.tar.gz"
      sha256 "8d3b4232b0ae6dce3c4fd7351efc692bfbd1270653a4dd8b20b0b24ef8a14c80"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.4.0/qtip_linux_amd64.tar.gz"
      sha256 "05bd3ca3f0eea5d5fe75cb6a34500d0ea788207ed9dd2b0c36307d97f485ab37"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
