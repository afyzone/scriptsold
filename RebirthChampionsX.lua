--https://www.roblox.com/games/8540346411/RELEASE-Rebirth-Champions-X
loadstring(game:HttpGet("https://raw.githubusercontent.com/Afyadh/Kronos-Hub/main/startload.lua"))()
wait(5)
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("afy#0679") -- Creates the window
local b = w:CreateFolder("Rebirth Champions X") -- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("Teleports") -- Creates the folder(U will put here your buttons,etc)
b:Label("HATE TRANNIES",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255, 255, 255); -- Self Explaining
    BgColor = Color3.fromRGB(0, 0, 0); -- Self Explaining
})
b:Button("Enable everything OP",function()
    game:GetService("Players").LocalPlayer.Upgrades.ClickMultiplier.Value = 1.e+99
    game:GetService("Players").LocalPlayer.Upgrades.FreeAutoClicker.Value = 1
    game:GetService("Players").LocalPlayer.Upgrades.WalkSpeed.Value = 100
    game:GetService("Players").LocalPlayer.Upgrades.FasterFreeAutoClicker.Value = 1.e+99
    game:GetService("Players").LocalPlayer.Upgrades.PetEquip.Value = 1.e+99
    game:GetService("Players").LocalPlayer.Passes.x2Rebirths.Value = true
    game:GetService("Players").LocalPlayer.Passes.AutoClicker.Value = true
    game:GetService("Players").LocalPlayer.Passes.UltraLuck.Value = true
    game:GetService("Players").LocalPlayer.Passes.AutoRebirth.Value = true
    game:GetService("Players").LocalPlayer.Passes.SuperLuck.Value = true
    game:GetService("Players").LocalPlayer.Passes["400PetStorage"].Value = true
    game:GetService("Players").LocalPlayer.Passes.x2Gems.Value = true
    game:GetService("Players").LocalPlayer.Passes.FasterEggOpen.Value = true
    game:GetService("Players").LocalPlayer.Passes["5PetEquip"].Value = true
    game:GetService("Players").LocalPlayer.Passes["100PetStorage"].Value = true
    game:GetService("Players").LocalPlayer.Passes.x2Clicks.Value = true
    game:GetService("Players").LocalPlayer.Passes["2PetEquip"].Value = true
    game:GetService("Players").LocalPlayer.Potions.x2Luck.Value = 3000000
    game:GetService("Players").LocalPlayer.Potions.x2Gems.Value = 3000000
    game:GetService("Players").LocalPlayer.Potions.x2Clicks.Value = 3000000
    game:GetService("Players").LocalPlayer.Data.MaxEquip.Value = 1.e+99
    game:GetService("Players").LocalPlayer.Data.MaxStorage.Value = 1.e+99
    game:GetService("Players").LocalPlayer.Boosts.x2LuckUse.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2RebirthsUse.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2GemsUse.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2ClicksUse.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2Luck.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2Rebirths.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2Gems.Value = 3000000
    game:GetService("Players").LocalPlayer.Boosts.x2Clicks.Value = 3000000
    game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer("Volcano")
end)
c:Button("Spawn",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Spawn.CFrame
end)
c:Button("Forest",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Forest.CFrame
end)
c:Button("Beach",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Beach.CFrame
end)
c:Button("Atlantis",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Atlantis.CFrame
end)
c:Button("Desert",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Desert.CFrame
end)
c:Button("Winter",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Winter.CFrame
end)
c:Button("Volcano",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Volcano.CFrame
end)
c:Button("Cube",function()
    game:GetService("Workspace").LocalPlayer.HumanoidRootPart.CFrame = game:GetService("Workspace").Scripts.TeleportTo.Cube.CFrame
end)
b:Label("afy on top!",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255, 255, 255); -- Self Explaining
    BgColor = Color3.fromRGB(0, 0, 0); -- Self Explaining
})
b:Button("Click to copy Discord Link!",function()
    setclipboard("https://discord.gg/EPsZZ5fQd5")
end)
