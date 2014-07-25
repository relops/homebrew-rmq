require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.53'

  if Hardware.is_64_bit?
    
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_amd64.zip"
    sha256 '70563037b3e42f79066fdc0b600d964aa621ed8e7c8feb2edcb7be4464052ac1'
  else
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_386.zip"
    sha256 '0e4b3907c24f0c7c4a4211bc7a87749d27734a8fb4a396f990d2a5ea8b5d0124'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
