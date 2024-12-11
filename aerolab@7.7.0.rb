class AerolabAT770 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-macos-amd64-7.7.0.zip"
      sha256 "7122a34513c5ebae99856928345e5b68b64d2f2444c6a8f484e650b5920a8e6d"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-macos-arm64-7.7.0.zip"
      sha256 "b547cb5c1b8bf95347c41606b48d2b7f715f1f3b20427e9c0a5abc632618da0b"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-linux-amd64-7.7.0.zip"
      sha256 "d731bee186e3a14a8f4191cddcd363289cfaae0c1fa7069f6e91670e1f50637c"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.7.0/aerolab-linux-arm64-7.7.0.zip"
      sha256 "a5f4c980c41a146aeab0f7a43ad3001f2f941cba2c0eac37d36df721a73ab2ec"

      def install
        bin.install "aerolab"
      end
    end
  end
end
