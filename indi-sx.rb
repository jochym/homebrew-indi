require 'formula'

class IndiSx < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-sx', :using => :svn, :revision => '2578'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-sx', :using => :svn
  version "1.1.0.2578"

  depends_on 'cmake' => :build
  depends_on 'seanhoughton/astronomy/libindi'

  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-march=core2", *std_cmake_args
    system "make", "install"
  end
end
