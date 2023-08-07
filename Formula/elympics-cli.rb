class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"

    version = "v0.0.4-beta"

    if OS.mac?
        if Hardware::CPU.intel?
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-x64.tar.gz"
            sha256 "2bd7e141bb801af2ce64b546f898daa1ee556e60f3360b04a97dd140e641a0a5"
        else
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-arm64.tar.gz"
            sha256 "5b18eb7c28430ef7e70f748cacf17392e6793ee02cdaabe842fd702ad203bea2"
        end
    else
        url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-linux-x64.tar.gz"
        sha256 "2bd7e141bb801af2ce64b546f898daa1ee556e60f3360b04a97dd140e641a0a5"
    end

    def install
        bin.install "elympics"
    end
end
