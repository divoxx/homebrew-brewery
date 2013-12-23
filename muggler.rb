require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.2.0.tar.gz'
  sha1 '5d165435a10591b64916f3131c87ce4b45c7d34f'

  def install
    system "cp -R * \"#{prefix}/\""
  end

  test do
    system "muggler"
  end
end
