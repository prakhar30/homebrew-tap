class SourceVerse < Formula
  desc "Run multiple Claude Code sessions in parallel from a single terminal"
  homepage "https://github.com/prakhar30/Source-verse"
  url "https://registry.npmjs.org/source-verse/-/source-verse-1.3.0.tgz"
  sha256 "110cb5220c04352771efcec4aa33168e7680be972d34a87d6e4fd9d097c2298b"
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
