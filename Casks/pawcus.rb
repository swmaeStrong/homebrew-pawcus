cask "pawcus" do
  version "0.5"
  sha256 "cb11d694ce723bbe792721d24117a83deb7cc8f82fb6f1aa48638beec30d4e84"

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
