class Nmsize < Formula
  desc "nmsize - Fast node_modules size scanner"
  homepage "https://github.com/smnandre/nmsize"
  url "https://github.com/smnandre/nmsize/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "549b443f2d5b3e916a890a7550e084620351e2c5b6e38d447a574e4f573c6ab1"
  license "MIT"

  def install
    bin.install "nmsize.sh" => "nmsize"
  end

  test do
    system "#{bin}/nmsize", "--help"
    assert_match "version", shell_output("#{bin}/nmsize --version")
  end
end
