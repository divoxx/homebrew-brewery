require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.2.1.tar.gz'
  sha1 'dab82fb6ba5fa10faf71b9a56bf768173a6b0930'

  def install
    system "cp -R * \"#{prefix}/\""
  end

  def caveats
    <<-EOS
    Run "muggler install" from within each repository you want to activate muggler.

    After an upgrade, make sure you also run "muggler install" so that git hooks gets
    updated to the latest versions.
    EOS
  end

  test do
    system "muggler"
  end
end
