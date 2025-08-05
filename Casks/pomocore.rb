cask "pomocore" do
  version "1.1.3"
  sha256 "8d44d8551a9f24d345057cb94f5ab44e98b0dd2f2ad900bf40ff4075a90315c8"

  url "https://github.com/swmaeStrong/Pawcus-Public/releases/download/v#{version}/Pomocore.zip"
  name "Pomocore"
  desc "Developer productivity timer and app usage tracker for macOS"
  homepage "https://github.com/swmaeStrong/Pawcus-Public"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pomocore.app"

  zap trash: [
    "~/Library/Application Support/Pawcus",
    "~/Library/Preferences/com.pawcus.Pawcus.plist",
    "~/Library/Saved Application State/com.pawcus.Pawcus.savedState",
  ]
end
