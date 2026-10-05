cask "samekeys" do
  version "1.1"
  sha256 "98a9a1d38ae3a1e0cba4b579a40ed1451448bc7721e736cdb3cf9753b5c9b169"

  url "https://github.com/lynnjeans/samekeys/releases/download/v#{version}/SameKeys-#{version}.dmg"
  name "SameKeys"
  desc "Windows keyboard shortcuts and mouse habits"
  homepage "https://samekeys.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SameKeys.app"

  uninstall quit: "com.samekeys.SameKeys"

  zap trash: [
    "~/Library/Application Support/SameKeys",
    "~/Library/Caches/com.samekeys.SameKeys",
    "~/Library/HTTPStorages/com.samekeys.SameKeys",
    "~/Library/Preferences/com.samekeys.SameKeys.plist",
  ]
end
