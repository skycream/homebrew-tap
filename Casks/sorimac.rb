cask "sorimac" do
  version "2.0.57"
  sha256 "311e66ccc0f1ccb499f66fff6012a964354c733e99a2b564bc22cc47921e5d53"

  url "https://sorimac.com/dl/Sorimac-#{version}.zip"
  name "Sorimac"
  desc "On-device dictation and voice commands"
  homepage "https://sorimac.com/en/"

  livecheck do
    url "https://sorimac.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Sorimac.app"

  zap trash: "~/.config/sorimac-neo"
end
