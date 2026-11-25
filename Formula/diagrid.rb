# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.140.0"

  bottle do
    root_url "https://github.com/diagridio/homebrew-tap/releases/download/v1.140.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2313d54eb116455ff3fb562fcc9159e056c32f16a383aa6b35f0c38e55e30168"
    sha256 cellar: :any_skip_relocation, sonoma: "e90b15d89fb3db1a418dae57ddcb66a8413b0b094c2ff2430a7e34ec39fa88a0"
    sha256 cellar: :any_skip_relocation, arm64_linux: "282c6a1dbb0511aaf369338906a12f5818bfd35a3257eda2f454842cc2fbd5f7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c208286513b5be3062527f30f8203e5c60e9d495086373811c7caac3eed862b7"
  end

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.140.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "99b886472cec3718d48c1287c3e5dd30433396d8ae98988f28c0b1b10b39e575"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.140.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "066f07efd9f4ca7c32fe90c2d4fb132805c696bc1d9b085ada7f6ffefdf9af9a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.140.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "ff47d6f34edd3e31a44b5719a287a794d07666e9fb9b1f8816ecf24302b668e5"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.140.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "ab43768f06533ae98dd5546b847d1430bcb619f01baa25f280ad33882c10fe20"
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
