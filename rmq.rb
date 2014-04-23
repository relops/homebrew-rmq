require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.50'

  if Hardware.is_64_bit?
    
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_amd64.zip"
    sha256 '6abd4dd720e56ce61e3a61a33bbb9d161a898f7e91f5214396a1ec96cc72fe59'
  else
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_386.zip"
    sha256 '49a978e6be4d09e7e9fd8b4008bdff79b53eee7e342d21bdb11b08f7805e4fae'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
