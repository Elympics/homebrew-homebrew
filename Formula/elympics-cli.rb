class ElympicsCli < Formula
    desc "This package contains command line interface for interacting with Elympics."
    homepage "https://elympics.cc"
    version "v0.0.6"
    osx_x64_sha = "9a589eae746dc8f3a08239c6e037b68d3f3730ea1ce001f55c388643becd4249"
    osx_arm64_sha = "f36643ee81e8f63bcc640bb0d11188640e6df6114d50bb56d338edd0dee00ae7"
    linux_sha = "33f592f40a091f0ee193ee4f44c23d4b17beb1cabfd689b23bd15a085ea66681"

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
