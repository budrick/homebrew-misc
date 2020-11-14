class Vile < Formula
  desc "Vi Like EMACS"
  homepage "https://invisible-island.net/vile/"
  url "https://invisible-mirror.net/archives/vile/current/vile-9.8u.tgz"
  sha256 "31a82833fe4fef5a60043bcc3278d1a875a1028b1b2577c9e0fa3a179cff165e"
  license "GPL-2.0-or-later"

  bottle do
    root_url "https://homebrew.bintray.com/bottles-misc"
    sha256 "bb6049bd84b4aee308e1be6044769f6e38fe44a9d3d9d166403f3e1824356a52" => :high_sierra
  end

  depends_on "ncurses"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--with-screen=ncursesw",
                          "--with-builtin-filters=all",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "vile", "-V"
  end
end
