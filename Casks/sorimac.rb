cask "sorimac" do
  version "2.1.0"
  sha256 "44460fa32a0b62c752f6bdd0c0a23a301157fb86e5dabf014801e5156c032e26"

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
  depends_on macos: :sequoia

  app "Sorimac.app"

  zap trash: "~/.config/sorimac-neo"
end
