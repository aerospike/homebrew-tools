class AerolabAT780 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.0/aerolab-macos-amd64-7.8.0.zip"
      sha256 "f43d4f0833195f5fe15abf36fa85ec61f3aac59632cbce7d9a841c116ad7c6df"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.0/aerolab-macos-arm64-7.8.0.zip"
      sha256 "19533fb9466a2b809b7242f8a5b07991234d8b98b10aa5b4238582a0dd82b2c6"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.0/aerolab-linux-amd64-7.8.0.zip"
      sha256 "200fbde7ede81747f29c0f333142c5476d57d8735c4a6ec6a59e2f66ca36489d"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.8.0/aerolab-linux-arm64-7.8.0.zip"
      sha256 "94b8585fc93e0a4ebb0344c1e22fb27c54d746001ce73a6f910ddc80c5d04788"

      def install
        bin.install "aerolab"
      end
    end
  end
end
