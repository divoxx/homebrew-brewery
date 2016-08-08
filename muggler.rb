require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.2.1.tar.gz'
  sha256 'b271f97b03a0aeb07b45669dedf956b0116e10c499d4987cd7261f2a10efe0c1'

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
