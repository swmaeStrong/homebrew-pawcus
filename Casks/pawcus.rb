cask "pawcus" do
  version "0.6.2"
  sha256 "95f623baa5c22516b6d8d3ecbfa1dcba980ba6837c7b9379509ade3b8e7a00fd"

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
