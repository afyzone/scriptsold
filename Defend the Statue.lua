local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Afy x Leadmarker") -- Creates the window
local b = w:CreateFolder("Defend the Statue") -- Creates the folder(U will put here your buttons,etc)
local Settings = {}

b:Toggle("Enable AutoFarm",function(bool)
    Settings.autofarm = bool
end)

b:Toggle("Enable Auto Clicker",function(bool)
    Settings.autoclick = bool
end)

b:Button("Noclip",function()
    game:GetService("Workspace").Map.Terrain.Baseplate.CanCollide = false
    game:GetService("Workspace").Map.Terrain.Stone.CanCollide = false
    game:GetService("Workspace").Map.Terrain.Sand.CanCollide = false
end)

b:Button("CLick to copy Discord Link!",function()
  setclipboard("https://discord.gg/BZUGjvYH")
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Units:GetChildren()) do
                if game:GetService("Players").LocalPlayer.Stats.Ready.Value == false then
                    game:GetService("ReplicatedStorage").Events.Core.Master:FireServer("User Ready")
                end
                repeat wait()
                game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,-2)
                until not Settings.autofarm or v.Humanoid.Health <= 0
            end
        end)
    end
end

spawn(function()
    while wait() do
        if Settings.autoclick then
            pcall(function()
                if game:GetService("Players").Afyzone.PlayerGui:GetChildren() then
                    if not game:GetService("Players").Afyzone.PlayerGui:FindFirstChild("GunUI") then
                        game.Players[game.Players.LocalPlayer.Name].Character.Humanoid:EquipTool(game.Players[game.Players.LocalPlayer.Name].Backpack["Starter Sword"])
                    else
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(500,0, 0, true, button, 1)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(500,0, 0, false, button, 1)
                    end
                end
            end)
        end
    end
end)
