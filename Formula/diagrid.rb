# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.142.0"

  bottle do
    root_url "https://github.com/diagridio/homebrew-tap/releases/download/v1.142.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3af2175d90e9de27aa999ba056c3a801d746bd62db9bf614e69f7ac67eaa59ac"
    sha256 cellar: :any_skip_relocation, sonoma: "37e616c88dce6bfa83400e2af78b2b08db33567fde73d36c2c7bf1c08ccc67a7"
    sha256 cellar: :any_skip_relocation, arm64_linux: "6e03696fa6f727a812feb92b98745a4fc6b1371bb930c70278f300bb9d70fc12"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2eeeb5058ffe6a6f365eb7837d4de9d1184828e153727adb21417417b2929722"
  end

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.142.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "6b246f105fbfbaaa41ee28ab73e0d8becc9a24b99bd576623d795ab58de9f274"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.142.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "619c1cc972e355f7e7eb04ef5d7fdb794d6b1bf14a67abb2afb1ac748dd9d9aa"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.142.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "b5de9a003d543ea80b9298492420851ea4b68f2dc85b47d404d3cbc0de2e2e8c"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.142.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "72b78f8775af0fc261f33bca91c6cc11f9ac8149f83200c72df94624fe662f6c"
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
