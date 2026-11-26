# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.141.0"

  bottle do
    root_url "https://github.com/diagridio/homebrew-tap/releases/download/v1.141.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5f2a319ca1d80fb4271b6b9aa3dbb393f7d92b8037b5a5f74f29002b22764bd6"
    sha256 cellar: :any_skip_relocation, sonoma: "ea3cc4af6b852be98a0a89263015ff07f076788bc59929397eff3b8c9456942f"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d01007add701a76c66ced744035684851f5068db7d2c0c31e93bf2d4048c22f9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e6d81eb5ca36c21b06d8661e12d5b2d7f634cb9d580f751b5a5f7aac7e3b904a"
  end

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.141.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "198c4e6d53a4182141e48bc8e84ab86ee7d46593a31080053f1e6132ca2e5e9c"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.141.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "697cddcad0f7812e8b326fb881b7316218f889f72790366b2dc19b0edee14f7b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.141.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "9d475b7a9832f55276c9d88ea459e49c3da567d77171181647066f38a6750ef7"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.141.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "cb4ce2715bd8f8a4d1c5d080742a7cc07b09d9a00b7b9503e5f36cbb4357794c"
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
