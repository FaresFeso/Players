local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fares.0.1", "BloodTheme")

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

PlayersSection:NewToggle("Fly", "Turn it on or off to fly", function(state)
    if state then
        local fly_Players = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))()

fly_Players(true) -- Change "true" To "false" to disable Fly
    else
       local fly_Players = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))()

fly_Players(false) -- Change "true" To "false" to disable Fly

    end
end)

local PlayersSection = Players:NewSection("Fly For Pc")


PlayersSection:NewKeybind("F To Fly", "NOMNOMNOM", Enum.KeyCode.F, function()
	local fly_ThisCanBeNamedAnything = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))()

fly_ThisCanBeNamedAnything(true) -- Change "true" To "false" to disable Fly
end)


PlayersSection:NewKeybind("Close/Open", "Click Ctrl To Open/Close The Gui", Enum.KeyCode.Ctrl, function()
	Library:ToggleUI()
end)