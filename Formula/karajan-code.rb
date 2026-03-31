class KarajanCode < Formula
  desc "Local multi-agent coding orchestrator with TDD, SonarQube, and code review"
  homepage "https://karajancode.com"
  url "https://registry.npmjs.org/karajan-code/-/karajan-code-1.57.2.tgz"
  sha256 "05ba47a5f4e460b56a862591375573cb6b135cea712664df02ca95375903faad"
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
