class AerolabAT771 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.1/aerolab-macos-amd64-7.7.1.zip"
      sha256 "7bc6844c6886eadae6a17e6c239a5c3022ae194b5046a9d3e3359aca140002b8"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.1/aerolab-macos-arm64-7.7.1.zip"
      sha256 "2937b07faa4bab6929e6fbf5e9e953d9065cd2e5c0234c788c6a6f6c4987d3e9"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.1/aerolab-linux-amd64-7.7.1.zip"
      sha256 "ea236d8951412c51e53b1ffe330fb5678d683874a48217574123a4c50ff00888"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.1/aerolab-linux-arm64-7.7.1.zip"
      sha256 "35c07e33b6a3b8dfd5d92a81cb0d35daaddda283e6178dce8af4645ae83b377b"

      def install
        bin.install "aerolab"
      end
    end
  end
end
