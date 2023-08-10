class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.5"
    osx_x64_sha = "386f37d0ba4f3906530e0d66322eb78dbeb614f84c9ea0eafe53ceaf4daefd26"
    osx_arm64_sha = "40b976e3bdef21ffee8ff76f754ad8585e1f088c5b8a355016c081d8e19b97f3"
    linux_sha = "61f9521f149db5efb8c7d1f36ed20f2bf1eafa2eaacdc472e8004d9545dbe6ac"

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
