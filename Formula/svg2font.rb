class Svg2font < Formula
  desc "Convert SVG icons to TTF icon font"
  homepage "https://github.com/cipherchabon/svg2font"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-macos.tar.gz"
    sha256 "PLACEHOLDER"
  end

  on_linux do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-linux-x86_64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "svg2font"
  end

  test do
    system "#{bin}/svg2font", "--help"
  end
end
