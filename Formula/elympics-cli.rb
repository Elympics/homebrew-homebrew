class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.7"
    osx_x64_sha = "753738c7c2437b6d3976863f19f87f099468672b2f42b176b4a3b55a131e4faf"
    osx_arm64_sha = "4cbf61bdbee95b4ee739dbc61268946a84a89cf73a18ef3ed5ecb15055010b7c"
    linux_sha = "0fe26e7255cf89ff26c901c0b559d2b2e815325a3a117f03f6a0c97032ad7d83"

    if OS.mac?
        if Hardware::CPU.intel?
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-x64.tar.gz"
            sha256 osx_x64_sha
        else
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-arm64.tar.gz"
            sha256 osx_arm64_sha
        end
    else
        url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-linux-x64.tar.gz"
        sha256 linux_sha
    end

    def install
        bin.install "elympics"
    end
end
