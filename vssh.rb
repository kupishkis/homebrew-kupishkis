class Vssh < Formula
  desc "vault ssh wrapper"
  homepage "https://github.com/kupishkis/vssh"
  url "https://github.com/kupishkis/vssh/archive/v0.1.tar.gz"
  sha256 "85cd342048badbbe60f553b2398e5455d7d65e6d98629f94239c95427ccbcf8e"

  depends_on "vault"

  def install
    bin.install "vssh"
    share.install "_vssh"
    (share/"zsh/site-functions").install_symlink Dir["#{share}/_vssh"]
  end

end
