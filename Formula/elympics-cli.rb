class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.6"
    osx_x64_sha = "1e3307575dbe28204130e4c2828f9aab909a076dcae1252bfd63ab6ca02a90e4"
    osx_arm64_sha = "35140530fa6d9f66c6ef7350e54005aaf1f0c155f64a11e7f1d4190268f3a5e0"
    linux_sha = "730bce85fe0b55c73d0029e940dbb61698fa8dcfacfd469f449f4b4d471e82b1"

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
