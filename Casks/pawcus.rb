cask "pawcus" do
  version "0.4.3"
  sha256 "a78a83b8ec284a331110ac29fda8193296bb583e32b28a2a79c46a9a8ad15c1c"

  url "https://github.com/swmaeStrong/MVP_Mac/releases/download/v#{version}/Pawcus.zip"
  name "Pawcus"
  desc "Developer productivity timer and app usage tracker for macOS"
  homepage "https://github.com/swmaeStrong/MVP_Mac"

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
