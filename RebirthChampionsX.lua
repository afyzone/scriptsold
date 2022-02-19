--https://www.roblox.com/games/8540346411/RELEASE-Rebirth-Champions-X
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
    if syn.request or http_request or request or http.request then
        local req = syn.request or http_request or request or http.request or nil
        if req ~= nil then
            for port=6463, 6472, 1 do
                local inv = "http://127.0.0.1:"..tostring(port).."/rpc?v=1"
                local http = game:GetService("HttpService")
                local t = {cmd = "INVITE_BROWSER", args = {["code"] = "EPsZZ5fQd5"}, nonce = string.lower(http:GenerateGUID(false))}
                local post = http:JSONEncode(t)
                req({Url = inv, Method = "POST", Body = post, Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}})
            end
        end
    end
end)
