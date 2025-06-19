cask "pawcus" do
  version "0.5"
  sha256 "c5ebf1b1e322a2d75369bb9c2118de7c8e174b22d279feedc136f92edb156bc4"

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
