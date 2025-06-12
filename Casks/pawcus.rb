cask "pawcus" do
  version "0.2.2"
  sha256 "94969e5605856daa25182df3e09a7a6b2ab1e5ccd9a09a11a37c57a8794c77c9"

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
