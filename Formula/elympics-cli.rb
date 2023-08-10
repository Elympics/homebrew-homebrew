class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.6"
    osx_x64_sha = "ecb8c9919f7c2121c21ca0b2145c815cde2c98f83c23a01f4f4ce4d48d36168f"
    osx_arm64_sha = "20b10c5c5965e4d0fd5aae9fc244d42063eac84bfb1d7ea389281ac2ce18b858"
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
