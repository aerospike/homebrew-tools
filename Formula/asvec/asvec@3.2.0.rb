class AsvecAT320 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "3.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/asvec/releases/download/v3.2.0/asvec-macos-amd64-3.2.0.zip"
      sha256 "9c37a28b77f034f142fabc6923d3909fa40369fdf0fc6c2d397ae0a480e2bd09"

      def install
        bin.install "asvec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/asvec/releases/download/v3.2.0/asvec-macos-arm64-3.2.0.zip"
      sha256 "0da63abf32358a3a247c9b21860cea1954f0c8683a9b23af23a2f93d394af81c"

      def install
        bin.install "asvec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/asvec/releases/download/v3.2.0/asvec-linux-amd64-3.2.0.zip"
      sha256 "8db9977a1e2ddbf26d86e777d1d5e2d01227cde37fb8ee7585c13f2a5947cf96"

      def install
        bin.install "asvec"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/asvec/releases/download/v3.2.0/asvec-linux-arm64-3.2.0.zip"
      sha256 "03e3102499b44ebd406a03203d4f8798c698d2ee6ddd5ce8721fa779622e9431"

      def install
        bin.install "asvec"
      end
    end
  end
end
