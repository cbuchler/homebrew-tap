class Slow < Formula
  desc "Diagnose macOS and Linux performance problems"
  homepage "https://github.com/cbuchler/slow"
  url "https://github.com/cbuchler/slow/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "ce6ad4fc25781871918f788a918b1bf33f3d7b2d28b07dffcb1309bfee4952bf"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    report = JSON.parse(shell_output("#{bin}/slow --fast --json; exit 0"))
    assert_equal version.to_s, report.fetch("version")
    assert_includes 0..100, report.fetch("score")
  end
end
