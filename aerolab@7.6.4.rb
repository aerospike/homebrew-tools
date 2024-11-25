class AerolabAT764 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.6.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.4/aerolab-macos-amd64-7.6.4.zip"
      sha256 "39775c48f286acc3718413c2c1ecd6aae0f8b03f6b9441350b524fdde8cdcc07"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.4/aerolab-macos-arm64-7.6.4.zip"
      sha256 "f5817758bf2ec8dff35a5beebaff25f17423710590281df6bd24bdf709571b10"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.4/aerolab-linux-amd64-7.6.4.zip"
      sha256 "c692b40327e80210c55316bb8ce4c463f90275e2a80f80e5ea0f80a7c14aa45a"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.6.4/aerolab-linux-arm64-7.6.4.zip"
      sha256 "cb82b4d245a8962666489f0d919e53f4292ebb94015102121df98fd82df2d647"

      def install
        bin.install "aerolab"
      end
    end
  end
end
