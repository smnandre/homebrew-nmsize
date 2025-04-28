class Nmsize < Formula
  desc "nmsize - Fast node_modules size scanner"
  homepage "https://github.com/smnandre/nmsize"
  url "https://github.com/smnandre/nmsize/archive/v1.0.0.tar.gz"
  sha256 "abc123"
  license "MIT"

  def install
    bin.install "nmsize.sh" => "nmsize"
  end

  test do
    system "#{bin}/nmsize", "--help"
    assert_match "version", shell_output("#{bin}/nmsize --version")
  end
end
