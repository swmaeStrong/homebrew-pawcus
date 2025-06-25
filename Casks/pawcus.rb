cask "pawcus" do
  version "0.8.1"
  sha256 "4da9707fa7e49d0c388e475a1440fff59ad23c7b02b016e6f924bddb60ea8491"

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
