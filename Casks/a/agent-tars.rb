cask "agent-tars" do
  version "1.0.0-alpha.1"
  sha256 "e3f234189589f8633e02a1ffd94f12e19fa63cd24c6fe98d8e0898c0a8c20489"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/Agent-TARS-v#{version}/Agent.TARS-#{version}-universal.dmg"
  name "Agent-TARS"
  desc "Multimodal AI agent that revolutionizes GUI interaction"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Agent TARS.app"

  uninstall quit: "com.bytedance.agenttars"

  zap trash: [
    "~/Library/Application Support/agent-tars",
    "~/Library/Logs/agent-tars",
  ]
end
