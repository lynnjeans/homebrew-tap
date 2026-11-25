cask "samekeys" do
  version "1.5"
  sha256 "16b1fd5e74ce16aa2f690876fcc1d676735de1862aa03cf7979c0d100ce33fd1"

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
