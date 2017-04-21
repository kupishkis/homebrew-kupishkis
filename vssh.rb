class Vssh < Formula
  desc "vault ssh wrapper"
  homepage "https://github.com/kupishkis/vssh"
  url "https://github.com/kupishkis/vssh/archive/v0.1.tar.gz"
  sha1 "30689ce9f6eb295224db04d8d2aa2e1efb5d9851"

  depends_on "vault"

  def install
    bin.install "vssh"
    share.install "_vssh"
    (share/"zsh/site-functions").install_symlink Dir["#{share}/_vssh"]
  end

end
