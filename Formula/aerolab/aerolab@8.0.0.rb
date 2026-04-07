class AerolabAT800 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "8.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0-257fd11/aerolab-macos-amd64-8.0.0.zip"
      sha256 "8ea73e1ef30618ee205403da210e2d3d912a0cdfa346ad09096d3db93c649a22"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0-257fd11/aerolab-macos-arm64-8.0.0.zip"
      sha256 "51889f36a4424bec39c8fc2fb50b9199f67a6820fc163cb8233a09c2ced96d31"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0-257fd11/aerolab-linux-amd64-8.0.0.zip"
      sha256 "f0c2b2513dc43c8007701eae9567d2dc6339128cb7d6300a481d5ee75c05afbf"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0-257fd11/aerolab-linux-arm64-8.0.0.zip"
      sha256 "0fa41ddf6ecc2933f196df5fc5c4c5df9b3feaef9aee3b920cc900afda7ffb68"

      def install
        bin.install "aerolab"
      end
    end
  end
end
