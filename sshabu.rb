# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sshabu < Formula
  desc "SSH client management tool"
  homepage "https://github.com/Ra-sky/sshabu"
  version "1.0.0"
  license "Apache-2.0"

  depends_on "openssh" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Ra-sky/sshabu/releases/download/v1.0.0/sshabu_Darwin_x86_64.tar.gz"
      sha256 "870cd1f587884b1d3c666c02bf3eaf17bd960efc494465ce1f1ec0f42656dd87"

      def install
        bin.install "sshabu"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Ra-sky/sshabu/releases/download/v1.0.0/sshabu_Darwin_arm64.tar.gz"
      sha256 "7d4d729bb2cd189b33deab153eee1c91125328681eb73037a65dde0e0799d1da"

      def install
        bin.install "sshabu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Ra-sky/sshabu/releases/download/v1.0.0/sshabu_Linux_arm64.tar.gz"
      sha256 "466be42f4b91c50b40a095f764b8c71dbbca357aa140604242482e2e6f61622c"

      def install
        bin.install "sshabu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Ra-sky/sshabu/releases/download/v1.0.0/sshabu_Linux_x86_64.tar.gz"
      sha256 "ee2a6e8c18fb569ba0505f0e2ecccbb6a5fb06905e707002b865a0b873fcf5a2"

      def install
        bin.install "sshabu"
      end
    end
  end

  def caveats
    <<~EOS
      Use `sshabu init` to create configuration example in $HOME/.sshabu/ directory
    EOS
  end
end
