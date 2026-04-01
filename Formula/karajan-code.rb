class KarajanCode < Formula
  desc "Local multi-agent coding orchestrator with TDD, SonarQube, and code review"
  homepage "https://karajancode.com"
  url "https://registry.npmjs.org/karajan-code/-/karajan-code-1.58.2.tgz"
  sha256 "61105d2385a897d00334185abc90a000f487d184610969096748ef1eeb3306de"
  license "AGPL-3.0-only"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kj --version")
  end
end
