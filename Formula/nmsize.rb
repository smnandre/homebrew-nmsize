class Nmsize < Formula
  desc "nmsize - Fast node_modules size scanner"
  homepage "https://github.com/smnandre/nmsize"
  url "https://github.com/smnandre/nmsize/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "b521ed0b619e39b2719211abb82b7d40d5477d12d4e70a73058b1d8a0064f4bb"
  license "MIT"

  def install
    bin.install "nmsize.sh" => "nmsize"
  end

  test do
    system "#{bin}/nmsize", "--help"
    assert_match "version", shell_output("#{bin}/nmsize --version")
  end
end
