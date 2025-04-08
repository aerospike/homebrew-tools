class AerolabAT770 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-macos-amd64-7.7.0.zip"
      sha256 "797571c3bcb4eea207e0e2bd0e315039802fae92bd34446500422623799d0f2e"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-macos-arm64-7.7.0.zip"
      sha256 "f1ae0ce4dc239d3cb05f9d9265a2b5a1351b0b059d1be2c7451942df030ccf39"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-linux-amd64-7.7.0.zip"
      sha256 "c52717d428e65102bd05edf38ba2bf0f8b7a40592853643f0b8ecc71573da015"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-linux-arm64-7.7.0.zip"
      sha256 "a65789bead80308e556cd6fae5d1201ceec24d18e0b7a70741b94add3476cd3b"

      def install
        bin.install "aerolab"
      end
    end
  end
end
