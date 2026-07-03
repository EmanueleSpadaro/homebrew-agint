class Jason < Formula
  desc "Java-based interpreter for an extended version of AgentSpeak"
  homepage "https://jason-lang.github.io/"
  url "https://github.com/jason-lang/jason/releases/download/v3.3.0/jason-bin-3.3.0.zip"
  sha256 "a70ac16768132cf3846b5250b7e1714b9b6b3ede033e8291340de4218495886f"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"jason").write_env_script libexec/"bin/jason", Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "Jason", shell_output("#{bin}/jason --version")
  end
end
