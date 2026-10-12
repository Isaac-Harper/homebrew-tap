cask "lowlight" do
  version "1.0.0"
  sha256 "48a0b965ced69f4f9f30a576b04b5de64286021de5b41342d2242d78c88e09f5"

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
