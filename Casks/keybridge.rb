cask "keybridge" do
  version "1.1"
  sha256 "544d62bbdaccd5aadf3176b0666cd9e960235f2a9e1c33282a4d3deb060299b1"

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
