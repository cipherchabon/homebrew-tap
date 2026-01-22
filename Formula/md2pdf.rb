class Md2pdf < Formula
  desc "A CLI tool to convert Markdown to PDF using Typst"
  homepage "https://github.com/cipherchabon/md2pdf"
  url "https://static.crates.io/crates/md2pdf-rs/md2pdf-rs-0.1.0.crate"
  sha256 "cab4d294d83e945d5e745189c6c07b0d2b132a098a409fbd0b7a535191cf8630"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    (testpath/"test.md").write("# Hello\n")
    system bin/"md2pdf", "test.md"
    assert_predicate testpath/"test.pdf", :exist?
  end
end
