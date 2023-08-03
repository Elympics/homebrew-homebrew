class ElympicsCli < Formula
    desc "Elympics CLI"
    homepage "https://elympics.cc"
    url "https://github.com/Elympics/ElympicsCLI/releases/download/v0.0.4-beta/elympics-#{OS.mac? ? "osx" : "linux"}-#{`uname -m`.strip == "x86_64" ? "x64" : "arm64"}.tar.gz"
    sha256 "2bd7e141bb801af2ce64b546f898daa1ee556e60f3360b04a97dd140e641a0a5"

    def install
        bin.install "elympics"
    end
end
