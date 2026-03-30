class KarajanCode < Formula
  desc "Local multi-agent coding orchestrator with TDD, SonarQube, and code review"
  homepage "https://karajancode.com"
  url "https://registry.npmjs.org/karajan-code/-/karajan-code-1.51.0.tgz"
  sha256 "68e67392e7612501e17f981e7f607301cca6469643511411d3d77560791951c1"
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
