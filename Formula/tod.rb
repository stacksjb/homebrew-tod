class Tod < Formula
  desc "Unofficial Todoist command-line client"
  homepage "https://www.tod.cx"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tod-org/tod/releases/download/v0.19.0/tod-0.19.0-darwin-amd64.tar.gz"
      sha256 "bc559fb06202adafb02043c0751cb9e42901317789f0ab21af7db5aefec7f1ed"
    end

    on_arm do
      url "https://github.com/tod-org/tod/releases/download/v0.19.0/tod-0.19.0-darwin-arm64.tar.gz"
      sha256 "624e5ef4fadef0086b1c4af943f56b7daaf11de6c66f40cc69bdca5f3d5135f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tod-org/tod/releases/download/v0.19.0/tod-0.19.0-linux-amd64.tar.gz"
      sha256 "0fcfeee1cc0efb97c50ee812e06c7d432b65d8b00f5b00e3457f790e4e63446d"
    end

    on_arm do
      url "https://github.com/tod-org/tod/releases/download/v0.19.0/tod-0.19.0-linux-arm64.tar.gz"
      sha256 "5822e1d7428896e5172b604bada68522153a864ea99d5ab961ad6d16f399e7bd"
    end
  end

  def install
    bin.install "tod"
  end

  test do
    expected_output = "Tod #{version}"
    assert_match expected_output, shell_output("#{bin}/tod -V")
  end
end
