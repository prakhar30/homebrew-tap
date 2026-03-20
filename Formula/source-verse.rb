class SourceVerse < Formula
  desc "Run multiple Claude Code sessions in parallel from a single terminal"
  homepage "https://github.com/prakhar30/Source-verse"
  url "https://registry.npmjs.org/source-verse/-/source-verse-1.2.0.tgz"
  sha256 "155f74c2b3833253c70b83686e70744be8c38f630c6df3cc8fbd0170b483621f"
  license "MIT"

  depends_on "node"
  depends_on "tmux"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/source-verse --version")
  end
end
