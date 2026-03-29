class Qtip < Formula
  desc "Scenario evaluation platform for AI agent integrity"
  homepage "https://github.com/callmeradical/qtip"
  version "0.5.1"
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_darwin_arm64.tar.gz"
      sha256 "25165a7a842e9ad07c4b14b70396aa7c9797ef047c3bd35b2f5ca3a93a4bae09"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_darwin_amd64.tar.gz"
      sha256 "e369f278052d4c1c8d1ab9d4eed8c668c51ea62014238c72d4ba88f4da18bda2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_linux_arm64.tar.gz"
      sha256 "3edb03d7a5afdf90ccbcccf06ced686f6a4f8532be9c9ac7921036d0b6d333cf"
    else
      url "https://github.com/callmeradical/qtip/releases/download/v0.5.1/qtip_linux_amd64.tar.gz"
      sha256 "a593aa627f0a0a803b08baac665dd0900b3bac2631e556ed1f9548e0fa4ac03f"
    end
  end

  def install
    bin.install "qtip"
  end

  test do
    assert_match "qtip", shell_output("#{bin}/qtip --help")
  end
end
