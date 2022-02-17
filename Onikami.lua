local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Afy") -- Creates the window
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
    game:GetService("ReplicatedStorage").Remotes.BindReset:FireServer()
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").LivingThings:GetChildren()) do
                if game:GetService("Players").LocalPlayer.Quest.IsActive.Value == false then
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
            end
        end)
    end
end
