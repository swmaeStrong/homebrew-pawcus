cask "pawcus" do
  version "0.5.4"
  sha256 "9e6b50a0a9b39ebdfdf793cacf7092501ccb8acc4247caded043e58cf209d053"

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
