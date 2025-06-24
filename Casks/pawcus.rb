cask "pawcus" do
  version "0.8.0"
  sha256 "de7a8749c50edb36f726134ccbb6e4714a9181162a87c7bcf89a1beb5b33eafb"

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
