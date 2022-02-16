local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Afy x Leadmarker") -- Creates the window
local b = w:CreateFolder("Dragon Orbz") -- Creates the folder(U will put here your buttons,etc)
local CurrentLevel = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text)
local CurrentHealth = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Health.TextLabel.Text)
local Zen = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Zen.TextLabel.Text)
local Mana = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Mana.TextLabel.Text)
b:Label("ION LIKE LGBT",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
local Settings = {}

local function resetXD()
    game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].Humanoid.Health = 0
end
b:Toggle("Infinite Charge",function(bool)
    Settings.InfiniteCharge = bool
end)

b:Toggle("AutoFarm",function(bool)
    Settings.autofarm = bool
end)local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Afy x Leadmarker") -- Creates the window
local b = w:CreateFolder("Dragon Orbz") -- Creates the folder(U will put here your buttons,etc)
local CurrentLevel = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text)
local CurrentHealth = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Health.TextLabel.Text)
local Zen = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Zen.TextLabel.Text)
local Mana = tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Mana.TextLabel.Text)
b:Label("ION LIKE LGBT",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})
local Settings = {}

local function resetXD()
    game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].Humanoid.Health = 0
end
b:Toggle("Infinite Charge",function(bool)
    Settings.InfiniteCharge = bool
end)

b:Toggle("AutoFarm",function(bool)
    Settings.autofarm = bool
end)

b:Button("NoStamina",function()
local old;
old = hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local Method = getnamecallmethod()
        if Method == "InvokeServer" then
                if tostring(self) == "ToggleSprint" then
                    args[1] = false
                end
                return old(self,unpack(args))
            end
    return old(self,...)
end)
end)

b:Button("Reset",function()
    resetXD()
end)

b:DestroyGui()

spawn(function()
    while wait() do
        if Settings.InfiniteCharge == true then
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ToggleCharge:InvokeServer(true)
        end
    end
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Resources.SpawnedAI:GetChildren()) do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Punch") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack['Punch'])
                end
                if v.Name == "Robber" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) < 9 and v.Humanoid.Health > 0 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robber Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Super Cayen" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 34 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 10 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Super Cayen Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Pig" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 44 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 35 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pig Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Dino" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 64 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 45 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Dino Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Cayen" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 89 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 65 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Cayen Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Thug" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 99 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 90 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Thug Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Pirate Bot" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 109 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 100 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pirate Bot Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Pirate Bot Commander" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 139 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 109 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pirate Bot Commander Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Destroyer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 224 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 140 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Elite Freezer Force Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Destroyer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 199 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 140 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Elite Freezer Force Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Freezer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 224 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 200 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Freezer Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Robot Commander" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 275 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 225 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robot Commander Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
                if v.Name == "Robot 17" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 500 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 325 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robot 17 Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humanoid.Health <= 0
                end
            end
        end)
    end
end


b:Button("Reset",function()
    resetXD()
end)

b:DestroyGui()

spawn(function()
    while wait() do
        if Settings.InfiniteCharge == true then
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ToggleCharge:InvokeServer(true)
        end
    end
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Resources.SpawnedAI:GetChildren()) do
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Punch") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack['Punch'])
                end
                if v.Name == "Robber" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) < 9 and v.Humanoid.Health > 0 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robber Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Super Cayen" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 34 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 10 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Super Cayen Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Pig" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 44 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 35 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pig Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Dino" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 64 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 45 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Dino Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Cayen" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 89 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 65 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Cayen Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Thug" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 99 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 90 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Thug Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Pirate Bot" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 109 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 100 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pirate Bot Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Pirate Bot Commander" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 139 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 109 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Pirate Bot Commander Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Destroyer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 224 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 140 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Elite Freezer Force Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Destroyer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 199 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 140 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Elite Freezer Force Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Freezer" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 224 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 200 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Freezer Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Robot Commander" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 275 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 225 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robot Commander Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
                if v.Name == "Robot 17" and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) <= 500 and tonumber(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Hud.Background.Profile.Level.TextLabel.Text) >= 325 then
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.ActiveQuest.Background.Background.Visible == false then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer("Robot 17 Quest")
                    end
                    repeat wait()
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.EquipTool:InvokeServer("Punch")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        game:GetService("Workspace").Live.Characters[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,-8,0)
                    until not Settings.autofarm or v.Humaoid.Health <= 0
                end
            end
        end)
    end
end
