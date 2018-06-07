require 'formula'

class PythonPjsua < Formula
    version "2.7.2"
    homepage 'http://www.pjsip.org'
    head 'http://svn.pjsip.org/repos/pjproject/trunk'

    depends_on "python@2"

    def install
        ENV.j1
        system "./configure", "--prefix=#{prefix}"
        system "make", "dep"
        system "make"
        cd "pjsip-apps/src/python"
        system "python2", "setup.py", "install"
    end
end
