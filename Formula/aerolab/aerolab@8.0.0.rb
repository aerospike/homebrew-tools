class AerolabAT800 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "8.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-macos-amd64-8.0.0.zip"
      sha256 "9fa3a763df3fb66d49809c346e764992817da20917b45b1a1da85c7b2f343b3f"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-macos-arm64-8.0.0.zip"
      sha256 "9d8ac9400ef9d94bb4ef02ed592e57bd985b8cac34df662a784842fdaf978a20"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-linux-amd64-8.0.0.zip"
      sha256 "431dfa110ea271ef1f3db0dd54dc6757fe94328a3eaa971495ef53da19ea5de6"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-linux-arm64-8.0.0.zip"
      sha256 "1156c1a40a576ac089a606e88b0904e7301ddf4c309749dd88dec7bfce2540f7"

      def install
        bin.install "aerolab"
      end
    end
  end
end
