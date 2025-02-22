cask "surfshark" do
  version "4.13.1,2105"
  sha256 :no_check

  url "https://downloads.surfshark.com/macOS/latest/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Surfshark.app"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_*.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos",
    "~/Library/Containers/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Containers/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
  ]
end
