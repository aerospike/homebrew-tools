class AerolabAT7102 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.10.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.2/aerolab-macos-amd64-7.10.2.zip"
      sha256 "7fd3bea0e78746086bf44c064fc4de452d1eb229a242e0924a596f5a04507cc4"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.2/aerolab-macos-arm64-7.10.2.zip"
      sha256 "54b8792273a4a3aefc3640b2aa69c18c6f48b41ba4f2cad48e7407f5eab0d1bd"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.2/aerolab-linux-amd64-7.10.2.zip"
      sha256 "a72b1f8ae8de7f5be1641509aa47a77486bdfcd79ab06b7d8ef7ba1123252bf8"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.2/aerolab-linux-arm64-7.10.2.zip"
      sha256 "271908cb8d636b5ed60f5b256c8d681ddc5c0b3731ed048c5a2880cab5dc0b9e"

      def install
        bin.install "aerolab"
      end
    end
  end
end
