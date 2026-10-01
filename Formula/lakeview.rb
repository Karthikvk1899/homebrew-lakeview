class Lakeview < Formula
  desc "Local data profiling, semantic diffing, and SQL"
  homepage "https://github.com/Karthikvk1899/lakeview"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.1/lakeview-Darwin-arm64.tar.gz"
      sha256 "5ead368738aa18967e9272913de25a3c23e9f75f8eed16ab665b89d03e861642"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.1/lakeview-Linux-x86_64.tar.gz"
      sha256 "4d987dc8789205e2dde43f9fc6a4d7fd8e1ed58390eec3891ae196ff4e6bb653"
    end
  end

  def install
    libexec.install "lakeview", "_internal"
    bin.write_exec_script libexec/"lakeview"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/lakeview --version")
    assert_match "42", shell_output("#{bin}/lakeview query 'SELECT 42 AS answer' --format jsonl")
  end
end
