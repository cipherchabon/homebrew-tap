class Svg2font < Formula
  desc "Convert SVG icons to TTF icon font"
  homepage "https://github.com/cipherchabon/svg2font"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-macos.tar.gz"
    sha256 "81c1b71d4910d36b2ddbbd4d0a2c9ef7800aabd46dcfe9d6060a1ed231ab1496"
  end

  on_linux do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-linux-x86_64.tar.gz"
    sha256 "768911313392309ccfcfa69f724c1f9a07d4de7c9e3a70335e9f8f25d249016c"
  end

  def install
    bin.install "svg2font"
  end

  test do
    system "#{bin}/svg2font", "--help"
  end
end
