local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("afy#0679") -- Creates the window
local b = w:CreateFolder("Onikami") -- Creates the folder(U will put here your buttons,etc)
local Rankings = game:GetService("Players").LocalPlayer.leaderstats.Rank.Value
local heightnpc = value
b:Label("HATE FAGS",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255, 255, 255); -- Self Explaining
    BgColor = Color3.fromRGB(0, 0, 0); -- Self Explaining
})
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
local Settings = {}

b:Slider("NPC Height",{
    min = 0; -- min value of the slider
    max = -15; -- max value of the slider
    precise = false; -- max 2 decimals
},function(value)
    heightnpc = value
end)
b:Toggle("Auto Farm",function(bool)
    Settings.autofarm = bool
end)
b:Button("Fix Character",function()
    for i, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
        if v:IsA("Part") then
            v.CanCollide = not Settings.autofarm
        end
    end
end)

b:Toggle("Auto Yen Farm",function(bool)
    Settings.YenFarm = bool
end)
spawn(function()
    while wait() do
        if Settings.YenFarm then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.8292236328125, 212.28228759765625, -1751.1221923828125)
            game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("LetterQuestGuy")
            task.wait(.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265.4073791503906, 252.47171020507812, -2272.247802734375)
            game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("LetterQuest")
            task.wait(.2)
        end
    end
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
    TextColor = Color3.fromRGB(255, 255, 255); -- Self Explaining
    BgColor = Color3.fromRGB(0, 0, 0); -- Self Explaining
})

local tp_list = {
    ['WisteriaEstate'] = game:GetService("Workspace").Regions.WisteriaEstate.CFrame,
    ['SwordSmith'] =  game:GetService("Workspace").Regions.SwordSmith.CFrame,
    ['Kunohe'] = game:GetService("Workspace").Regions.Kunohe.CFrame,
    ['SlayersHQ'] = game:GetService("Workspace").Regions.SlayersHQ.CFrame,
    ['District'] = game:GetService("Workspace").Regions.District.CFrame,
    ['Final Selection Start'] = game:GetService("Workspace").IntNpcs.FSEnterHead.Head.CFrame,
}
local tp_names = {}
for i,v in pairs(tp_list) do
    table.insert(tp_names, i) 
end

b:Dropdown("Select TP",tp_names,true,function(v) --Replace the Dropdown name with the selected one(A,B,C)
    Settings.chosentp = v
end)

b:Button("Teleport",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tp_list[Settings.chosentp]

end)

b:Label("LeadMarker kinda cute,",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
b:Label("AriRemel got cute balls.",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
b:Button("Click to copy Discord Link!",function()
    setclipboard("https://discord.gg/EPsZZ5fQd5")
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Map:GetChildren()) do
                if v:IsA("Part") then
                    v.CanCollide = not Settings.autofarm
                end
            end
            for i, v in pairs(game:GetService("Workspace").LivingThings:GetChildren()) do
                if Rankings == "Demon" or Rankings == "Weak1" or Rankings == "Weak2" or Rankings == "WeakMed1" or Rankings == "WeakMed2" or Rankings == "WeakMed3" or Rankings == "WeakMed4" or Rankings == "Strong1" or Rankings == "Strong2" or Rankings == "Strong3" or Rankings == "Strong4" or Rankings == "Lower Moon" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.MissionD.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("MissionDemon")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gyutaro Sickles") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Gyutaro Sickles"])
                    end
                    if v.Name == "Slayer" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Sickles:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,(heightnpc),4)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),0,0)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                elseif Rankings == "Civilian" then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Old Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Old Nichirin Katana"])
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Nichirin Katana"])
                    end
                    if v.Name == "Demon" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Katana:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,(heightnpc),4)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),0,0)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                elseif Rankings == "Slayer" or Rankings == "Mizunoto" or Rankings == "Mizunoe" or Rankings == "Kanoto" or Rankings == "Kanoe" or Rankings == "Tsuchinotos" or Rankings == "Tsuchinoe" or Rankings == "Hinoto" or Rankings == "Hinoe" or Rankings == "Kinoto" or Rankings == "Kinoe" or Rankings == "PseudoHashira" then
                    if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").IntNpcs.Mission.HumanoidRootPart.CFrame
                        wait(.3)
                        game:GetService("ReplicatedStorage").Remotes.GiverQuest:FireServer("SlayerMission")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fists") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Fists)
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Old Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Old Nichirin Katana"])
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Nichirin Katana") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Nichirin Katana"])
                    end
                    if v.Name == "Demon" and v.Humanoid.Health > 0 then
                        repeat wait()
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Fists:FireServer("Release")
                        game:GetService("ReplicatedStorage").Remotes.CombatRemotes.Katana:FireServer("Release")
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,(heightnpc),4)
                        game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game:GetService("Workspace").LivingThings[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),0,0)
                        until not Settings.autofarm or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end
