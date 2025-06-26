cask "pawcus" do
  version "0.8.6"
  sha256 "ee0cb0167473d0418e7d9e4fecac057bede2e08245569d269a6e552b57defd8b"

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
