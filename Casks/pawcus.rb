cask "pawcus" do
  version "0.5.3"
  sha256 "48655b6fe626898c78f1c7ed749f1d72ebf80b3d1837a0a126d9a079a2a337dd"

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
