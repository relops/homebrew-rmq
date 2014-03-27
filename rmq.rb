require 'formula'

class Rmq < Formula
  homepage 'https://github.com/relops/rmq'
  version '0.2.40'

  if Hardware.is_64_bit?
    
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_amd64.zip"
    sha256 'abb2438add14e7003ae59046cdc7cf17eaedfd5d696b6661df224ca597595dbb'
  else
    url "https://dl.bintray.com/relops/rmq/rmq_#{version}_darwin_386.zip"
    sha256 '78b43b204ddb88a904cf8b594628bd0ad488b39258d584aaf9d8cc0178ea4b15'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end
end
