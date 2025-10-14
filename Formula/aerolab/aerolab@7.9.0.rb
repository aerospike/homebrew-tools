class AerolabAT790 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.9.0/aerolab-macos-amd64-7.9.0.zip"
      sha256 "0ffcac692ce4fc783792419544af4f1b2ccb170a22132ed63044d320d4b8139e"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.9.0/aerolab-macos-arm64-7.9.0.zip"
      sha256 "cc0f6f9d485b817c8d831c2672482657dfc4b36be3d1e0561916cdb38ec1ec0b"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.9.0/aerolab-linux-amd64-7.9.0.zip"
      sha256 "92609597ceaa5ad92f8754ca8e6cd081a2f9d6117af0e4360d80088aa1f7534f"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.9.0/aerolab-linux-arm64-7.9.0.zip"
      sha256 "9903fd228dcf435888dc9d89870f173aaebdda2cf5cec63b3d3c2cd10c69d9ee"

      def install
        bin.install "aerolab"
      end
    end
  end
end
