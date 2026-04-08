class KarajanCode < Formula
  desc "Local multi-agent coding orchestrator with TDD, SonarQube, and code review"
  homepage "https://karajancode.com"
  url "https://registry.npmjs.org/karajan-code/-/karajan-code-2.5.0.tgz"
  sha256 "f0e03751d071b5e6d912d1c6d8b4e497f17c94798b9bebe669ddbb30ebafa277"
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
