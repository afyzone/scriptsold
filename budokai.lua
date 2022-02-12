getgenv().autofarm = true

repeat wait() until game:IsLoaded()

local function getquest()
    game:GetService("ReplicatedStorage").Events.NPCEvents.TalkToNPC:FireServer("Future Goku")
    game:GetService("ReplicatedStorage").Events.NPCEvents.Interact:FireServer("Future Goku","Yes") 
end

local gay = true
local function weaken()
    local old 
    old = hookmetamethod(game, "__index", function(self, v)
        if tostring(self) == "Defense" and v == "Value" then 
            v = 0  
            return 0
        end
        
        return old(self, v)
    end)
    repeat wait() until gay == false
end

local enemy_names = {
    "Vegeta",
    "Frieza",
    "Raditz"
}

spawn(function()
    while wait() do 
        if getgenv().autofarm then 
            pcall(function()
                if game.PlaceId == 8675599791 then
                    getquest()
                    wait(5)
                else
                    if game:GetService("Players")[game.Players.LocalPlayer.Name].stats.LifeForce.Value <= 99 then
                        wait(5)
                        game:GetService("ReplicatedStorage").Events.Nap:FireServer()
                        wait(1)
                        repeat wait() until game.Players.LocalPlayer.stats.LifeForce.Value == 100
                        if game:GetService("Workspace")[game.Players.LocalPlayer.Name].BasicValues.Resting.Value == true then
                            game:GetService("ReplicatedStorage").Events.Nap:FireServer()
                        end
                    end
                    for i,v in pairs(game.Workspace.EnemyNPCs:GetChildren()) do
                        if v:IsA("Model") and v.Name == "Vegeta" or v.Name == "Frieza" or v.Name == "Raditz" then
                            if 
                                    game:GetService("ReplicatedStorage").Events.FormEvents.Transform:FireServer(game:GetService("Workspace").Afyzone.BasicValues.Form.Value))
                            end
                            game:GetService("ReplicatedStorage").Events.Movement.Dash:FireServer()
                            game:GetService("ReplicatedStorage").Events.Attacks.BasicAttack:FireServer(false,true)
                            game:GetService("ReplicatedStorage").Events.isFlying:FireServer()
                            game:GetService("ReplicatedStorage").Events.AuraOn:FireServer(true)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,2)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait(40) do
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
while wait() do 
    if getgenv().autofarm then 
        weaken()
    end
end
