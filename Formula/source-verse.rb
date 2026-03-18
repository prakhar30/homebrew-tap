class SourceVerse < Formula
  desc "Run multiple Claude Code sessions in parallel from a single terminal"
  homepage "https://github.com/prakhar30/Source-verse"
  url "https://registry.npmjs.org/source-verse/-/source-verse-1.0.1.tgz"
  sha256 "2cbfa4c1e99bfca80c3f0fdd82cba64094d63c330b0cc1df70ab168381807500"
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
