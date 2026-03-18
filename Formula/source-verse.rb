class SourceVerse < Formula
  desc "Run multiple Claude Code sessions in parallel from a single terminal"
  homepage "https://github.com/prakhar30/Source-verse"
  url "https://registry.npmjs.org/source-verse/-/source-verse-1.1.0.tgz"
  sha256 "61f2b944d868b8ef5d1de8c7fe45f880119e2efcce10c4451e34f59c48a276f1"
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
