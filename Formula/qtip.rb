class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.2.0"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.2.0/qtip_darwin_arm64.tar.gz"
      sha256 "6e0d255dac5455abb2a9a139c81a6ccad39c9f564f3564786859bc662e195c52"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.2.0/qtip_darwin_amd64.tar.gz"
      sha256 "53d64ed1dc48aafeb189bd7684d6a2bcec171599c02b24c03366d841b4e79a95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.2.0/qtip_linux_arm64.tar.gz"
      sha256 "30d6991bf46050d0ed21eb09ce33041e663117df0e1e8a935f680d1d24d30247"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.2.0/qtip_linux_amd64.tar.gz"
      sha256 "e3f6c8a30f733adcd147d435758a19d87ed2e894095d1edde44dc31ca6cff2fc"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
