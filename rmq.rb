require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.38'

  if Hardware.is_64_bit?
    
    url 'https://dl.bintray.com/relops/rmq/rmq_0.2.31_darwin_amd64.zip'
    sha256 '61ecc7ed1da92146c1f397debc58f2604295d226b790611d9ff4750650d420cf'
  else
    url 'https://dl.bintray.com/relops/rmq/rmq_0.2.31_darwin_amd64.zip'
    sha256 '2077c377e7a03cb791b447a66a75d2771ef8caa454c144950087329f0a01080c'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
