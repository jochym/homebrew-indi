require 'formula'

class IndiEqmod < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-eqmod', :using => :svn, :revision => '2578'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-eqmod', :using => :svn 
  version "1.1.0.2578"

  depends_on 'cmake' => :build
  depends_on 'seanhoughton/astronomy/libindi'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
