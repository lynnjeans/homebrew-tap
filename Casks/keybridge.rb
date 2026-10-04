cask "keybridge" do
  version "1.3"
  sha256 "32c33a3c1762ccba1889c5d7c1d2a6b659006e2578420b6c158941b69df335e9"

  url "https://github.com/lynnjeans/keybridge/releases/download/v#{version}/KeyBridge-#{version}.dmg"
  name "KeyBridge"
  desc "Windows keyboard shortcuts and mouse habits"
  homepage "https://lynnjeans.github.io/keybridge/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "KeyBridge.app"

  uninstall quit: "io.github.lynnjeans.KeyBridge"

  zap trash: [
    "~/Library/Application Support/KeyBridge",
    "~/Library/Caches/io.github.lynnjeans.KeyBridge",
    "~/Library/HTTPStorages/io.github.lynnjeans.KeyBridge",
    "~/Library/Preferences/io.github.lynnjeans.KeyBridge.plist",
  ]
end
