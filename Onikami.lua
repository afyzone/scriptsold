local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("afy#0679") -- Creates the window
local b = w:CreateFolder("Onikami") -- Creates the folder(U will put here your buttons,etc)
local Rank = game:GetService("Players").LocalPlayer.leaderstats.Rank.Value
b:Label("HATE FAGS",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
local Settings = {}
b:Toggle("Auto Farm",function(bool)
    Settings.autofarm = bool
end)
b:Button("Infinite Breathing",function()
    while wait() do
        game:GetService("ReplicatedStorage").Remotes.StartBreathing:FireServer()
    end
end)
b:Button("Reset",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].Humanoid.Health = 0
end)

b:Label("Teleports:",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
b:Button("WisteriaEstate",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").Regions.WisteriaEstate.CFrame
end)
b:Button("SwordSmith",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").Regions.SwordSmith.CFrame
end)
b:Button("Kunohe",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").Regions.Kunohe.CFrame
end)
b:Button("SlayersHQ",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").Regions.SlayersHQ.CFrame
end)
b:Button("District",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").Regions.District.CFrame
end)

b:Label("LeadMarker kinda cute",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
b:Button("Click to copy Discord Link!",function()
    setclipboard("https://discord.gg/9YrrVdmfxG")
    if syn.request or http_request or request or http.request then
        local req = syn.request or http_request or request or http.request or nil
        if req ~= nil then
            for port=6463, 6472, 1 do
                local inv = "http://127.0.0.1:"..tostring(port).."/rpc?v=1"
                local http = game:GetService("HttpService")
                local t = {cmd = "INVITE_BROWSER", args = {["code"] = "9YrrVdmfxG"}, nonce = string.lower(http:GenerateGUID(false))}
                local post = http:JSONEncode(t)
                req({Url = inv, Method = "POST", Body = post, Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}})
            end
        end
    end
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").LivingThings:GetChildren()) do
                if Rank == "Demon" or Rank == "Weak1" or Rank == "Weak2" or Rank == "WeakMed1" or Rank == "WeakMed2" or Rank == "WeakMed3" or Rank == "WeakMed4" or Rank == "Strong1" or Rank == "Strong2" or Rank == "Strong3" or Rank == "Strong4" or Rank == "Lower Moon" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.MissionD.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("MissionDemon")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if v.Name == "Slayer" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,4)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                elseif Rank == "Civilian" then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Old Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Old Nichirin Katana"])
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Nichirin Katana"])
                    end
                    if v.Name == "Demon" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Katana:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,4)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                elseif Rank == "Slayer" or Rank == "Mizunoto" or Rank == "Mizunoe" or Rank == "Kanoto" or Rank == "Kanoe" or Rank == "Tsuchinotos" or Rank == "Tsuchinoe" or Rank == "Hinoto" or Rank == "Hinoe" or Rank == "Kinoto" or Rank == "Kinoe" or Rank == "PseudoHashira" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.Mission.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("Mission")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Old Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Old Nichirin Katana"])
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Nichirin Katana"])
                    end
                    if v.Name == "Demon" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,4)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                end
            end
            end
        end)
    end
end
