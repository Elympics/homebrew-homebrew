class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.4-beta"

    if OS.mac?
        if Hardware::CPU.intel?
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-x64.tar.gz"
            sha256 "3a8220108dab12150ff56ee3470203a777e373cb59f7226177d18c0f3d295141"
        else
            url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-osx-arm64.tar.gz"
            sha256 "729183ef65e1de67fa65e4fb637059ef2fda19195092a010d0c6087fea639bfa"
        end
    else
        url "https://github.com/Elympics/ElympicsCLI/releases/download/#{version}/elympics-linux-x64.tar.gz"
        sha256 "2bd7e141bb801af2ce64b546f898daa1ee556e60f3360b04a97dd140e641a0a5"
    end

    def install
        bin.install "elympics"
    end
end
