cask "pawcus" do
  version "0.2.2"
  sha256 "0763daaa1a17a5875cfd0fbf9c2a84a34a5b2a1d61eefd83670025466f7b4820"

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