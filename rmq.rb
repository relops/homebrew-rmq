require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.38'

  if Hardware.is_64_bit?
    
    url 'https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_amd64.zip'
    sha256 '273e21743244bbf73f8499f326fd3c95b7a21c8f392edf1c5c5ecb79445c0f0c'
  else
    url 'https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_386.zip'
    sha256 'e0191fee2cc8eac2b675855634f9274de6660ad8314705c1b9a9387ab376c15f'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
