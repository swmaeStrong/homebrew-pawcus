cask "pomocore" do
  version "1.1.3"
  sha256 "9085fa762fbbc49c1a37a672281275c3eb2c9b845b569bc09a0ebbc1e4afd27f"

  url "https://github.com/swmaeStrong/Pawcus-Public/releases/download/v#{version}/Pomocore.zip"
  name "Pomocore"
  desc "Developer productivity timer and app usage tracker for macOS"
  homepage "https://github.com/swmaeStrong/Pawcus-Public"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pomocore.app"

  zap trash: [
    "~/Library/Application Support/Pawcus",
    "~/Library/Preferences/com.pawcus.Pawcus.plist",
    "~/Library/Saved Application State/com.pawcus.Pawcus.savedState",
  ]
end
