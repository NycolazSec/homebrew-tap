# typed: false
# frozen_string_literal: true

# Published by hand for v1.7.0. From the next tcpcat release on, GoReleaser
# regenerates this file: do not edit it.
class Tcpcat < Formula
  desc "Network scanner with an AF_XDP engine, service detection and CVE lookup"
  homepage "https://tcpcat.io"
  license "AGPL-3.0-only"

  on_macos do
    on_intel do
      url "https://github.com/NycolazSec/tcpcat/releases/download/v1.7.0/tcpcat_1.7.0_darwin_amd64.tar.gz"
      sha256 "6599a54e4a21a5312bc250bf9f32598a5a89857b92cc1f879627ec52c6aada7e"
    end
    on_arm do
      url "https://github.com/NycolazSec/tcpcat/releases/download/v1.7.0/tcpcat_1.7.0_darwin_arm64.tar.gz"
      sha256 "aec19bd3332244eed976939092bd81bbd8a4305fdca70e4866b672ddf24817fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NycolazSec/tcpcat/releases/download/v1.7.0/tcpcat_1.7.0_linux_amd64.tar.gz"
      sha256 "ef0c41e157086048c8dacb49fe4e0b36846d3cd812f2ef0836a86d7c35d3aaeb"
    end
    on_arm do
      url "https://github.com/NycolazSec/tcpcat/releases/download/v1.7.0/tcpcat_1.7.0_linux_arm64.tar.gz"
      sha256 "350dad0c6a1b75ffcf214e4e925e75d886f766c5eecb42016e235a6116d1e8b5"
    end
  end

  def install
    bin.install "tcpcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tcpcat --version")
  end
end
