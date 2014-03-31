require 'formula'

class PythonPjsua < Formula
  homepage 'http://www.pjsip.org'
  url 'http://www.pjsip.org/release/2.1/pjproject-2.1.tar.bz2'
  sha1 '244884fb900594104792c431946384e0fedc9560'

  depends_on :python
  depends_on :pjsip

  def install
    ENV.j1
    system "cd", "pjsip-apps/src/python"
    system "python", "./setup.py", "install"
  end
end
