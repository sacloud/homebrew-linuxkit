class Linuxkit < Formula
  desc "Lightweight Linux distribution tool"
  homepage "https://github.com/sacloud/linuxkit"
  head "https://github.com/sacloud/linuxkit.git"

  depends_on "go" => :build

  def install
    mkdir_p buildpath/"src/github.com/linuxkit"
    ln_s buildpath, buildpath/"src/github.com/linuxkit/linuxkit"

    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace:#{buildpath}"

    system "make", "local-build"

    bin.install "bin/linuxkit"
  end

  test do
    output = shell_output(bin/"linuxkit version")
    assert_match "linuxkit version", output
  end
end
