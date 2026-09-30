cask "keybridge" do
  version "1.0.1"
  sha256 "fd7b6943c74c7a2d92eb5e0163f4062155059ca151ea57e7b4243a09bfe892c1"

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
