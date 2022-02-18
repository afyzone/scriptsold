local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("afy#0679") -- Creates the window
local b = w:CreateFolder("Onikami") -- Creates the folder(U will put here your buttons,etc)
b:Label("HATE FAGS",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
local Settings = {}
b:Toggle("Auto Farm",function(bool)
    Settings.autofarm = bool
end)
b:Button("Reset",function()
    game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].Humanoid.Health = 0
end)

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
b:Label("LeadMarker kinda cute",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").LivingThings:GetChildren()) do
                if game:GetService("Players").LocalPlayer.leaderstats.Rank.Value == "Demon" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.MissionD.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("MissionDemon")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if v.Name == "Slayer"  and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,8)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                elseif game:GetService("Players").LocalPlayer.leaderstats.Rank.Value == "Civilian" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.Mission.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("Mission")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if v.Name == "Demon"  and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,8)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end
