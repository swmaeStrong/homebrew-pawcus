cask "pawcus" do
  version "0.6.5"
  sha256 "9a53ac3a8e7ea3dc01c4b8cec0e6197545b5da4ce315ac7f3f344788d9c54683"

  url "https://github.com/swmaeStrong/Pawcus/releases/download/v#{version}/Pawcus.zip"
  name "Pawcus"
  desc "Developer productivity timer and app usage tracker for macOS"
  homepage "https://github.com/swmaeStrong/Pawcus"

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
