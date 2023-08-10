class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.5"
    osx_x64_sha = "46c6b7e74770835d7623ee5fed33e8f3d808b079dd2dd61ccaecae60a8e51c3e"
    osx_arm64_sha = "6e213126601b112d751776a2698f8ec03b0071982002bd0a1a5c66eecd7165e2"
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
