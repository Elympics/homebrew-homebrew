class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.1.0"
    osx_x64_sha = "50cb67df5488744f5691f509f76b8a8bc6c2ea00eefb1b1b5a8623a1f68e9c9f"
    osx_arm64_sha = "f951513fbcbeb57eb539bb0aaaff73ce132fa02cd38c4ae23929e708128a18a2"
    linux_sha = "2514e74be3833c3ea4565ca7795f7678187be862bae94644560f9b9cbc18475d"

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
