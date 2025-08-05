cask "pomocore" do
  version "1.1.3"
  sha256 "82793fa7b548d8f35e4b715c514f19f924775876bf03d2f192f8494296f9c1e6"

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
