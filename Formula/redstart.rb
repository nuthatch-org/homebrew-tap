# Template rendered by .github/workflows/release.yml on each tagged release.
# The placeholders (0.17.0, __SHA_*__) are substituted with the real
# version and per-platform sha256 checksums, then committed to the tap repo as
# Formula/redstart.rb. Edit the template here, never the rendered formula.
class Redstart < Formula
  desc "Multi-file language for authoring The Graph subgraphs"
  homepage "https://github.com/nuthatch-org/redstart"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nuthatch-org/redstart/releases/download/v0.17.0/redstart-aarch64-apple-darwin.tar.gz"
      sha256 "958d6938390ef9d48e6483133b88ace64d124155eb48b84d0e28000523a39158"
    end
    on_intel do
      url "https://github.com/nuthatch-org/redstart/releases/download/v0.17.0/redstart-x86_64-apple-darwin.tar.gz"
      sha256 "5d3fc0c01c5856653ffd30f801973fc3433a0d3c98db77b2a4776d32f326597e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuthatch-org/redstart/releases/download/v0.17.0/redstart-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fd65c6c6c521f1587c069e14a6be632090b01ab24e72a0b7a3ba77ce3ee5ce3"
    end
    on_intel do
      url "https://github.com/nuthatch-org/redstart/releases/download/v0.17.0/redstart-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbdcba7040bbc54f8d2f8905806f1af61d9de68793db7c2d8cc470a252bc6e8e"
    end
  end

  def install
    bin.install "redstart"
  end

  test do
    assert_match "redstart #{version}", shell_output("#{bin}/redstart --version")
  end
end
