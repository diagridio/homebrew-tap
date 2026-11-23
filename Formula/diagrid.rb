# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.136.0"

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.136.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "ac38fc6997d6abcec79c3d06ef349e1b4283617f501a8f8afec0a6edff0b7500"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.136.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "ce66f2f10d99398e5e37f7d9cf1d009e7b38832d9f03a5b651f1c4d3277236fa"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.136.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "d39ea612ca0ff0b2b1f351366ebb6b415895a4f5ef680ceed67ca0c592eb24a0"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.136.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "0815a7c7f2882c28b7a7570b3b2a809b569136d35478479c5d503e7c16c06d04"
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
