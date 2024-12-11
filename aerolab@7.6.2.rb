class AerolabAT762 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.6.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.2/aerolab-macos-amd64-7.6.2.zip"
      sha256 "e0d973912600abff2f524d0c860b57054c580b13469a9e1aa8373ce4d4b65670"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.2/aerolab-macos-arm64-7.6.2.zip"
      sha256 "d7a277a4c9a42e339e32ecd9db8004ae242cf1a85b2aa74c8dddf8168f633df9"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.2/aerolab-linux-amd64-7.6.2.zip"
      sha256 "b7c2e1146b526e8f9b5b22f035421460f29d7d9ebac4c61abc2f2d220f7485b2"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.2/aerolab-linux-arm64-7.6.2.zip"
      sha256 "91495a7d02a4af893e339a77e301eac641a99346783316da183a86c5bd04b720"

      def install
        bin.install "aerolab"
      end
    end
  end
end
