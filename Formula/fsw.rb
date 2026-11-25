class Fsw < Formula
  desc "Manage declarative file watches with watchexec, launchd and systemd"
  homepage "https://github.com/cbuchler/fsw"
  url "https://github.com/cbuchler/fsw/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e5341aa5d57091d0c1f929d13f74ad4dc1f5a665a1b669544fa5be233637853c"

  depends_on "watchexec"
  depends_on "yq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    ENV["EDITOR"] = "true"
    ENV["FSW_RULES"] = (testpath/"rules.toml").to_s
    system bin/"fsw", "edit"
    assert_equal (share/"fsw/rules.example.toml").read, (testpath/"rules.toml").read
    assert_match "parse: ok (1 rules)", shell_output("#{bin}/fsw doctor")
  end
end
