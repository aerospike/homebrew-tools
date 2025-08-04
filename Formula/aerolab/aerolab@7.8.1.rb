class AerolabAT781 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.1/aerolab-macos-amd64-7.8.1.zip"
      sha256 "7f4f626eb13709db6bc1a456737bfdde628a66e79b1082e3082672fdf6994e21"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.1/aerolab-macos-arm64-7.8.1.zip"
      sha256 "c8129b6c8dd6d635d78130c0d03af8c393269ce0ae138268b36c57b9e81c1c79"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.1/aerolab-linux-amd64-7.8.1.zip"
      sha256 "c4df3616a1983913498583adac43fa68963c5da6305fb4421ef3ca8c5b72efb6"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.1/aerolab-linux-arm64-7.8.1.zip"
      sha256 "08f9cbf587094945034f15422583f29754785e65fccd765de6c0a7f509de1666"

      def install
        bin.install "aerolab"
      end
    end
  end
end
