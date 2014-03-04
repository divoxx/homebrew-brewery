require "formula"

class GitFu < Formula
  homepage "https://github.com/divoxx/git-fu"
  url "https://github.com/divoxx/git-fu/archive/v0.2.0.tar.gz"
  sha1 "d566550148d51d13e22cdeefc85d7e97fda5833e"

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "which git-optimize"
  end
end
