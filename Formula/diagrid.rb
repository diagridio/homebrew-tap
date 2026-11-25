# Rendered by tools/cli/packaging/build.sh in diagridio/cloudgrid on every
# Diagrid CLI release. Do not edit by hand: the next release overwrites it.
class Diagrid < Formula
  desc "Command-line interface for Diagrid Catalyst and Conductor"
  homepage "https://www.diagrid.io"
  version "1.139.0"

  bottle do
    root_url "https://github.com/diagridio/homebrew-tap/releases/download/v1.139.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e249fb0672ecd11c1697e7a6764ba5132f3a1a65d3087a3b737925d8eb5e4ffa"
    sha256 cellar: :any_skip_relocation, sonoma: "27e261010d6acb47cd86a533ca18e44c88a6cbaedf95c0a447b28abe5e8b96a5"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d514d242f86ee978a54bdb9dc1e4e5ae1b49303bb4cb55ed36b69d92d0d59c74"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "de58e3df948348d74a9c1d5640a5283c981f7a016bec9ee473fa80bd4589ce54"
  end

  on_macos do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.139.0/diagrid/diagrid_darwin_arm64/diagrid_darwin_arm64.tar.gz"
      sha256 "71918c894ffe1ab6d53331d3588e1c948261c8c845b1e1e331017784d48481d8"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.139.0/diagrid/diagrid_darwin_amd64/diagrid_darwin_amd64.tar.gz"
      sha256 "fbf66cd2cf74ed6847e09500cd50dbe2fe0a42b908da436218d203e15f0c0832"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.diagrid.io/cli/v1.139.0/diagrid/diagrid_linux_arm64/diagrid_linux_arm64.tar.gz"
      sha256 "ff0a616317b82d4ee961df17a0e5cddfe299ad32b20fa996ed7843a770fa739d"
    end
    on_intel do
      url "https://downloads.diagrid.io/cli/v1.139.0/diagrid/diagrid_linux_amd64/diagrid_linux_amd64.tar.gz"
      sha256 "b26d342792e78a050fa86496fcd218ba151a6f0e3cdd4e8e13af7af49f8f3399"
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
