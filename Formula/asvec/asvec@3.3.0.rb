class AsvecAT330 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "3.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/asvec/releases/download/v3.3.0/asvec-macos-amd64-3.3.0.zip"
      sha256 "06da87557678e5a2acc29826c81201d23555cb2c8eb481755a933bda8481a6ef"

      def install
        bin.install "asvec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/asvec/releases/download/v3.3.0/asvec-macos-arm64-3.3.0.zip"
      sha256 "c8154c1372b21ebff86d13a9a0949142d7c317aaf352e83526f91bb9a856864d"

      def install
        bin.install "asvec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/asvec/releases/download/v3.3.0/asvec-linux-amd64-3.3.0.zip"
      sha256 "71444549f1d065873a7845112359c13d8b78cf13f429ceb227d770498002471c"

      def install
        bin.install "asvec"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/asvec/releases/download/v3.3.0/asvec-linux-arm64-3.3.0.zip"
      sha256 "cdc50128795fb4230004fd453c1c651a2175b047e66264611aec9e7c9bf3d557"

      def install
        bin.install "asvec"
      end
    end
  end
end
