require 'formula'

class PythonPjsua < Formula
    desc 'PJSIP multimedia communication library implementing standard based protocols such as SIP, SDP, RTP, STUN, TURN, and ICE'
    homepage 'http://www.pjsip.org'
    url 'http://www.pjsip.org/release/2.7.2/pjproject-2.7.2.tar.bz2'
    sha256 '9c2c828abab7626edf18e04b041ef274bfaa86f99adf2c25ff56f1509e813772'

    depends_on "python@2"

    def install
        ENV.deparallelize
        system "./configure", "--prefix=#{prefix}"
        system "make", "dep"
        system "make"
        cd "pjsip-apps/src/python"
        system "python2", "setup.py", "install"
    end
end
