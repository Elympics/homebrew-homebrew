class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.5"
    osx_x64_sha = "448f325ec54d83c4a4b0203793b6d79e33a62e174b94700d78172c7adecb6683"
    osx_arm64_sha = "7158bea1793a44f8c3f2bdda55a2d20f530e1ac0a1b7858627a33cc71f69f47c"
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
