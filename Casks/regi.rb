cask "regi" do
  version "0.1.0"
  sha256 "ff90d0b0c4607ffdf9d4434409411e91102b41bcea04747954aaa5af458f06bb"

  url "https://github.com/mcuelenaere/regi/releases/download/v#{version}/Regi.dmg"
  name "Regi"
  desc "Client for JetKVM, PiKVM and VNC KVM-over-IP devices"
  homepage "https://github.com/mcuelenaere/regi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Regi.app"

  # Keychain items (service "app.regi.mac.password") are not removed.
  zap trash: [
    "~/Library/Application Support/Regi",
    "~/Library/Caches/app.regi.mac",
    "~/Library/HTTPStorages/app.regi.mac",
    "~/Library/Preferences/app.regi.mac.plist",
    "~/Library/Saved Application State/app.regi.mac.savedState",
  ]
end
