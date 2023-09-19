class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.8"
    osx_x64_sha = "ab0defc4e28ab849ff6a1c2fcbfba5a1c3f140077d778aee2223a2030db2d59f"
    osx_arm64_sha = "781849169da7f3e658b8593830cedfea21fad36605e4589e0e55351febf2ce18"
    linux_sha = "c8ec33ea9efd1cf220a52e4d4fb88c228ede63c9021c227b11fc65c321fe9598"

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
