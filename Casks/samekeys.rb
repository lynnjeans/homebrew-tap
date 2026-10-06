cask "samekeys" do
  version "1.3"
  sha256 "f9345be27d0ed31a2c5c3ff54f71ee516d33780b64fa05a0d69c74ba2daa8613"

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
