class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.5"
    osx_x64_sha = "d70d8ab023a824ba0fa6197e7246b8034ea0877028b5a0ffaf2a570e94b416fe"
    osx_arm64_sha = "92d2053e436e9d404d2b8a6fbbe9897e231423e928f0f97f587cda69ed3cc537"
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
