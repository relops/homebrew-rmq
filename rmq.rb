require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.53'

  if Hardware.is_64_bit?
    
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_amd64.zip"
    sha256 '456997ae87b394a31be14f33eb7f3fa48b84610c5e094273b4414ba3efc01e98'
  else
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_386.zip"
    sha256 '26f32a3968165c1c4a1e57fdc8e7d3a599c9e60a03ac267e8ad388aef7432bae'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
