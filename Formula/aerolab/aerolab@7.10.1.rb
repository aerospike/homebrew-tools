class AerolabAT7101 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.1/aerolab-macos-amd64-7.10.1.zip"
      sha256 "30e321b90e06c206c84db8c7eb9cabf6fe91037fef951e35a61ffdc347fce3b2"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.1/aerolab-macos-arm64-7.10.1.zip"
      sha256 "021e4282a93654afe37f8a8ae58103cf933b1ad17e50bb976e7845214ce87a3c"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.1/aerolab-linux-amd64-7.10.1.zip"
      sha256 "e5ac3e7fa2ca46ece2b8ef8d077b18aef4dcc8d5074075aeb4755341b7543830"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.1/aerolab-linux-arm64-7.10.1.zip"
      sha256 "cd120e785203d3d708b2fc1645b435ee729ad6423c43f488220bff6e31e413c1"

      def install
        bin.install "aerolab"
      end
    end
  end
end
