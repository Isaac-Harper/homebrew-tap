cask "lowlight" do
  version "1.0.2"
  sha256 "7fad9e633a9656caa51a74fadb39ab0461d253c85174bdd5ba7e661c36423688"

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
