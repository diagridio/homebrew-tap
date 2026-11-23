# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.137.0"

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.137.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "d75650e04c0a66f11f1c5834b4746da37c078fd46771717bada96f7e4765631d"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.137.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "8dc142a16a31128a2f6af2fb13f0644d0fe72d452c497dfab212f65a4b7e92c7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.137.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "3cf0fa0ef3d30653bcfb69bbab9140230e33489d7e6e341bb1d0c99953b12033"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.137.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "2c2ce250f1873decc89607df0e1363dec27d085b64c6db1ac837063288482966"
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
