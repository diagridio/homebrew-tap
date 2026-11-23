# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.138.0"

  bottle do
    root_url "https://github.com/diagridio/homebrew-tap/releases/download/v1.138.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d5bdd31e6d6d5bca0df72b83115a8b840facea0840c35f62e23adc8b6f0f6741"
    sha256 cellar: :any_skip_relocation, sonoma: "3aa25af5095f3c9dae2b4a47f3189bafab8b755d155fda7146f2a3dd3abc4894"
    sha256 cellar: :any_skip_relocation, arm64_linux: "f301bbe251c78c4ff28c43bf222acd17ea722d057cbe1d1a4100dac6d4e033ef"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2e1ea850cfcf72ed885309bf2c33e9edc0fc19b63896139ec9f4dbcb5844e229"
  end

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.138.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "0e71fd7dd42043281279390bba75bde61fed31e0657d4520bf5b87fc63d684ae"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.138.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "1c3471f7efce796beb514d559baf8d5866b2f1141383bec42bfe388c918481bf"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.138.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "fe415695f0728a1a9b557f1491273bd4836ccc43a276864cd7d3ae8fb18e249b"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.138.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "797d91057e7df494d5e81e1a165b68979ef0ac810c21758a1b4b7602985a8600"
    end
  end

  def install
    bin.install "diagrid"
    generate_completions_from_executable(bin/"diagrid", "completion")
  end

  test do
    assert_match "Version: #{version}", shell_output("#{bin}/diagrid version")
  end
end
