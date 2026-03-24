class AerolabAT800 < Formula
  desc ""
  homepage "https://github.com/aerospike/homebrew-tools"
  version "8.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-macos-amd64-8.0.0.zip"
      sha256 "eb5591b8559d6aee9c54a188dcefc4ad32c654f05a203d5985854ac68fb6dccb"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-macos-arm64-8.0.0.zip"
      sha256 "545d2435630d08b1dbf17743f9affde73e5bcf051689afb7ca708453d7652cba"

      def install
        bin.install "aerolab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-linux-amd64-8.0.0.zip"
      sha256 "b4714eeb7b93742aa345d2ec3df7c3c632712dc26f74651c9967a240f07f969b"

      def install
        bin.install "aerolab"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aerospike/aerolab/releases/download/8.0.0/aerolab-linux-arm64-8.0.0.zip"
      sha256 "ea9f20651905f34da68ad73d94b0ac9bb41bd314ce35bfa7e82cbd0e17c88e9c"

      def install
        bin.install "aerolab"
      end
    end
  end
end
