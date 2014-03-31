require 'formula'

class PythonPjsua < Formula
  homepage 'http://www.pjsip.org'
  head 'http://svn.pjsip.org/repos/pjproject/trunk'

  depends_on :python

  def install
    ENV.j1
    system "./configure", "--prefix=#{prefix}"
    system "make", "dep"
    system "make"
    system "cd", "pjsip-apps/src/python", "&&", "python", "setup.py", "install"
  end
end
