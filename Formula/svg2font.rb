class Svg2font < Formula
  desc "Convert SVG icons to TTF icon font"
  homepage "https://github.com/cipherchabon/svg2font"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-macos.tar.gz"
    sha256 "d87f63edd8529bc7e14f4a1c226df849724bd089e26915de57e2c6596d890389"
  end

  on_linux do
    url "https://github.com/cipherchabon/svg2font/releases/download/v#{version}/svg2font-linux-x86_64.tar.gz"
    sha256 "b1dffd1e6277e8df449a1f90394a62b97fc67931827da1da6f0705d1e9ff48a2"
  end

  def install
    bin.install "svg2font"
  end

  test do
    system "#{bin}/svg2font", "--help"
  end
end
