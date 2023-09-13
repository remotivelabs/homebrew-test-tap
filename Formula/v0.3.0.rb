class V030 < Formula
  desc "Some Desc"
  homepage "https://example.com"
  url "https://github.com/psampaz/gothanks/archive/v0.3.0.tar.gz"
  sha256 "ce5440334b3eac2e058724faa4c6e4478ca1d81ea087e55ccca33f1996752aad"
  license ""

  bottle do
    root_url "https://github.com/remotivelabs/homebrew-test-tap/releases/download/v0.3.0-0.3.0"
    sha256 cellar: :any_skip_relocation, ventura:      "a0fac43a68aa18fedd61fac1dd5b3cbea9ef28372836503f834d4fac38ad8fdb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d6b7104d920980dd24127247c0a292fc704ec14af4f66b6d67d13d646dde0798"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
