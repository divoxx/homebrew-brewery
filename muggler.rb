require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.1.2.tar.gz'
  sha1 'fcc15fd246c183d900b20ced6d3bcb0ef9f98fdc'

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "muggler"
  end
end
