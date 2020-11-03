# This file was generated by GoReleaser. DO NOT EDIT.
class Qiic < Formula
  desc "qiic"
  homepage "https://github.com/momotaro98/qiic"
  version "1.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/momotaro98/qiic/releases/download/v1.2.1/qiic_1.2.1_Darwin_x86_64.tar.gz"
    sha256 "ec9885a838f17a25b491647dfdc35408cc2b6e34d6589054d8fb06d8ac0d5a62"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/momotaro98/qiic/releases/download/v1.2.1/qiic_1.2.1_linux_x86_64.tar.gz"
      sha256 "464e01002455f80ec152005d5116da8aeb447cb0f8bd75eab8635d9433e91c50"
    end
  end

  def install
    bin.install "qiic"
  end

  test do
    system "#{bin}/qiic --version"
  end
end
