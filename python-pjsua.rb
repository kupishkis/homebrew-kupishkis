require 'formula'

class PythonPjsua < Formula
    version "0.1.0"
    homepage 'http://www.pjsip.org'
    head 'http://svn.pjsip.org/repos/pjproject/trunk'

    depends_on :python

    def install
        ENV.j1
        system "./configure", "--prefix=#{prefix}"
        system "make", "dep"
        system "make"
        cd "pjsip-apps/src/python"
        system "python", "setup.py", "install"
    end
end
