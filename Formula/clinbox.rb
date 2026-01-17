class Clinbox < Formula
  desc "Terminal-first email client with AI-powered triage"
  homepage "https://github.com/cipherchabon/clinbox"
  url "https://github.com/cipherchabon/clinbox/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "58ee3bbad1631c0fcbec2b7347de7bdfb3c3d04eaa4275ac2d092aa90c891eba"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "clinbox", shell_output("#{bin}/clinbox --version")
  end
end
