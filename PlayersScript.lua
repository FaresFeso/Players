local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SoloX V0.5", "BloodTheme")

-- Players
local Players = Window:NewTab("Players")
local PlayersSection = Players:NewSection("Speed")


PlayersSection:NewSlider("Speed", "Makes you run FASTER!!!", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


local PlayersSection = Players:NewSection("Jump")


PlayersSection:NewSlider("Jump", "Makes you jump HIGH!!!", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local PlayersSection = Players:NewSection("Fly For Mobile")

PlayersSection:NewToggle("Fly For Mobile", "Turn On/off To Enable/Disable Fly", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FaresFeso/Players/main/fly.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FaresFeso/Players/main/fly.lua"))()
    end
end)

local PlayersSection = Players:NewSection("Fly For Pc")

PlayersSection:NewKeybind("Fly For Pc", "Click F To Enable/Disable Fly", Enum.KeyCode.F, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FaresFeso/Players/main/fly.lua"))()
end)
