cask "sorimac" do
  version "2.0.59"
  sha256 "f1fd8a789e01feb5587d5a2277fbc50f4f2b452084742ed2487c31aabdb77892"

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
