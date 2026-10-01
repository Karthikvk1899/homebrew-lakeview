class Lakeview < Formula
  desc "Local data profiling, semantic diffing, and SQL"
  homepage "https://github.com/Karthikvk1899/lakeview"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.0/lakeview-Darwin-arm64.tar.gz"
      sha256 "f3008be839f5031a8d9b2d00b6d0ba6789c0d6a096bf980c00c09496dc97caa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.0/lakeview-Linux-x86_64.tar.gz"
      sha256 "b63a777c1a7304dc48e5a3dd9c0fe39bba8ece46ace26ce6cac283f3f9721a39"
    end
  end

  def install
    libexec.install "lakeview", "_internal"
    bin.write_exec_script libexec/"lakeview"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/lakeview --version")
    assert_match "42", shell_output("#{bin}/lakeview query 'SELECT 42 AS answer' --format jsonl")
  end
end
