class KarajanCode < Formula
  desc "Local multi-agent coding orchestrator with TDD, SonarQube, and code review"
  homepage "https://karajancode.com"
  url "https://registry.npmjs.org/karajan-code/-/karajan-code-1.57.0.tgz"
  sha256 "288a6a69cda718b96aa8456e6d38afe35c8a15a227e325d7be00b1f6250dcaea"
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
