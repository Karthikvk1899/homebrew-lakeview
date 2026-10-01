class Lakeview < Formula
  desc "Local data profiling, semantic diffing, and SQL"
  homepage "https://github.com/Karthikvk1899/lakeview"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.2/lakeview-Darwin-arm64.tar.gz"
      sha256 "a6976d39e1f66ddf9ca46f0073984a78035a6d6eee731ae4aeef401527d5f3d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Karthikvk1899/lakeview/releases/download/v0.1.2/lakeview-Linux-x86_64.tar.gz"
      sha256 "4c1378cc75f3bcb86dd6c40a2cce207b44f0aedf2ea1ae4e52d36d7b7c463dee"
    end
  end

  def install
    libexec.install "lakeview", "_internal"
    bin.write_exec_script libexec/"lakeview"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/lakeview --version")
    assert_match "42", shell_output("#{bin}/lakeview query 'SELECT 42 AS answer' --format jsonl")
  end
end
