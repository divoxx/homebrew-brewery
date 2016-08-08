require "formula"

class GitFu < Formula
  homepage "https://github.com/divoxx/git-fu"
  url "https://github.com/divoxx/git-fu/archive/v0.2.0.tar.gz"
  sha256 "389b0e50fc5e931d6d99f89eee96787593878792bfe9e25dc97413fbd184c570"

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "which git-optimize"
  end
end
