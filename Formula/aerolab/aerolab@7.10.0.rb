class AerolabAT7100 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "7.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.0/aerolab-macos-amd64-7.10.0.zip"
      sha256 "fc12aff9c1cc88405ad8f5e79194b7ccd2a6090db26b295f866bb2960d876c13"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.0/aerolab-macos-arm64-7.10.0.zip"
      sha256 "e6f8b92b7dc8e07ae17a6be019d0f32aeab992a4037a57758e6d040294769689"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.0/aerolab-linux-amd64-7.10.0.zip"
      sha256 "210941a8a39b53deb2292637018237df8583e45d7e1522a213eda5cb9dca534d"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/7.10.0/aerolab-linux-arm64-7.10.0.zip"
      sha256 "66fd0c8e456ad5dc4a6623b6564bf4755f0ecd06330165ea24b31c464969f387"

      def install
        bin.install "aerolab"
      end
    end
  end
end
