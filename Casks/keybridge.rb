cask "keybridge" do
  version "1.0.0"
  sha256 "f3ea994c0071ed8bd8e4e917ec2ec92f9817feeea778c45a5847e9164fa764d6"

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
