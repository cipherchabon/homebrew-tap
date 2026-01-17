class Clinbox < Formula
  desc "Terminal-first email client with AI-powered triage"
  homepage "https://github.com/cipherchabon/clinbox"
  url "https://github.com/cipherchabon/clinbox/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "997fb6d3f1c15a6cc3786d4359c2d054bb140d228f723dbf76c3add3b4086a7b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "clinbox", shell_output("#{bin}/clinbox --version")
  end
end
