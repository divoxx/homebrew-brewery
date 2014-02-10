require "formula"

class GitFu < Formula
  homepage "https://github.com/divoxx/git-fu"
  url "https://github.com/divoxx/git-fu/archive/0.1.0.tar.gz"
  sha1 "16248a22f0e6c680a5cbb905ecb31ae1950b595d"

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "which git-optimize"
  end
end
