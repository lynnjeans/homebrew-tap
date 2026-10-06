cask "samekeys" do
  version "1.2"
  sha256 "60e2261a52f7181a3d79068a68a6c9665c8ea5781e803809f9a977de2ccc2830"

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
