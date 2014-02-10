require "formula"

class GitFu < Formula
  homepage "https://github.com/divoxx/git-fu"
  url "https://github.com/divoxx/git-fu/archive/v0.1.0.tar.gz"
  sha1 "887a24811a186d2bb3615f918ce22b268905f38e"

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "which git-optimize"
  end
end
