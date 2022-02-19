local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Afy x Leadmarker") -- Creates the window
local b = w:CreateFolder("Defend the Statue") -- Creates the folder(U will put here your buttons,etc)
local Settings = {}
local CurrentSword = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("MELEE_CLIENT")
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Afyadh/Kronos-Hub/main/startload.lua"))()
end)
wait(2)
b:Label("HATE FAGGOTS",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

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

b:Button("Click to copy Discord Link!",function()
    setclipbiard("https://discord.gg/9YrrVdmfxG"
end)

while wait() do
    if Settings.autofarm then
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Units:GetChildren()) do
                if game:GetService("Players").LocalPlayer.Stats.Ready.Value == false then
                    game:GetService("ReplicatedStorage").Events.Core.Master:FireServer("User Ready")
                end
                repeat wait()
                game:GetService("Workspace")[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,2)
                until not Settings.autofarm or v.Humanoid.Health <= 0
            end
        end)
    end
end

spawn(function()
    while wait() do
        if Settings.autoclick then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() then
                    if game:GetService("Workspace").Afyzone.Humanoid.Health == 0 then
                        wait(6)
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(CurrentSword))
                    else
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(500,0, 0, true, button, 1)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(500,0, 0, false, button, 1)
                    end
                end
            end)
        end
    end
end)
