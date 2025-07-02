cask "pawcus" do
  version "0.9.0"
  sha256 "baddbba0a661a8951e6188677eedcf2927177aab8466becb8a42ffb3505b7405"

  url "https://github.com/swmaeStrong/Pawcus-Public/releases/download/v#{version}/Pawcus.zip"
  name "Pawcus"
  desc "Developer productivity timer and app usage tracker for macOS"
  homepage "https://github.com/swmaeStrong/Pawcus-Public"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pawcus.app"

  zap trash: [
    "~/Library/Application Support/Pawcus",
    "~/Library/Preferences/com.pawcus.Pawcus.plist",
    "~/Library/Saved Application State/com.pawcus.Pawcus.savedState",
  ]
end
