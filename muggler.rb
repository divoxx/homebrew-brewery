require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.2.2.tar.gz'
  sha256 'ffb099c9bd47fcbcd98e922d8505e6f7d62a07605fb989c1d09d68d3dabceb45'

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
