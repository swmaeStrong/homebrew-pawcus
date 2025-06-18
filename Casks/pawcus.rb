cask "pawcus" do
  version "0.5.0"
  sha256 "c0731f1b3fff985811d0547f1f722e4d3107150439270fe7442348f313b4c74a"

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
