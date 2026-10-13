cask "lowlight" do
  version "1.0.1"
  sha256 "0613c351b3f33dfea6bd4e4e58f6667b04367eaf4c6b5a082e407ba5878ac9e0"

  url "https://github.com/Isaac-Harper/lowlight/releases/download/v#{version}/Lowlight-#{version}.zip"
  name "Lowlight"
  desc "Dims the keyboard backlight below the system minimum"
  homepage "https://github.com/Isaac-Harper/lowlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Lowlight.app"

  uninstall quit: "dev.isaacharper.lowlight"

  zap trash: "~/Library/Preferences/dev.isaacharper.lowlight.plist"
end
