class Jade < Formula
  desc "Java Agent DEvelopment Framework"
  homepage "https://jade.tilab.com/"
  url "https://github.com/EmanueleSpadaro/homebrew-jade/releases/download/v4.6.0/JADE-bin-4.6.0.zip"
  sha256 "9d2c088bd3d9d97e8861e0fd52a2dc13740b0d532721b518c4eabdf80eba3d74"
  license "LGPL-2.1-only"

  depends_on "openjdk"

  def install
    system "unzip", "-qq", cached_download, "-d", buildpath
    libexec.install "jade"
    (bin/"jade").write <<~EOS
      #!/bin/bash
      exec java -cp "#{libexec}/jade/lib/jade.jar" jade.Boot "$@"
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/jade -help 2>&1", 0)
  end
end
