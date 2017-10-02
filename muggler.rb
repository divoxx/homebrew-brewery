require 'formula'

class Muggler < Formula
  homepage 'https://github.com/divoxx/muggler'
  url 'https://github.com/divoxx/muggler/archive/v0.2.2.tar.gz'
  sha256 'efacda331470514ebb765388f2f2c64984dd53783f4529d513775fe414f2d174'

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
