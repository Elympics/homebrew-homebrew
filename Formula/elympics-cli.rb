class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.5"
    osx_x64_sha = "492f777a405ce59acda9a2ca678bb1415fce59cd618c3c3dc613f41151750630"
    osx_arm64_sha = "96fb451d8e2ea9378614edfafcaa9b64cc6746ea2a9bf15c15bcebd6951be5de"
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
