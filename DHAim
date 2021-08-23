if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local uis = game:GetService("UserInputService")
local rservice = game:GetService("RunService")
local tween = game:GetService("TweenService")
local cam = workspace.CurrentCamera

local masterenabled = false
local akey = Enum.KeyCode.Q
local aimpart = "Head"
local preidicion = 1
local silent = true
local camlock = false
local keyss = false
local fov_value = 75
local thicknesssa = 3
local visibleonly = false
local day = true
local night = false
local cfov = cam.FieldOfView

local FOVCircle = Drawing.new("Circle")
FOVCircle.Radius = fov_value
FOVCircle.Thickness = thicknesssa
FOVCircle.Transparency = 1
FOVCircle.NumSides = 100
FOVCircle.Visible = true
FOVCircle.Color = Color3.fromRGB(0, 125, 255)
mouse.Move:Connect(function()
    FOVCircle.Thickness = thicknesssa
    FOVCircle.Radius = fov_value
    FOVCircle.NumSides = 100
    FOVCircle.Color = Color3.fromRGB(0, 125, 255)
    FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + 36)
    FOVCircle.Transparency = 1
end)

function getClosestMouse()
    local nearest = nil  
    local last = math.huge
    for i,v in next, game.Players:GetPlayers() do
        if v ~= lp and lp.Character and v.Character and v.Character:FindFirstChild("Head") then
            local ePos = cam:WorldToViewportPoint(v.Character:FindFirstChild("Head").Position)
            local AccPos = Vector2.new(ePos.X, ePos.Y)
            local mousePos = Vector2.new(mouse.X, mouse.Y)
            local distance = (AccPos - mousePos).magnitude
            if distance < last then
                last = distance
                nearest = v
            end
        end
    end
    if nearest ~= nil then
        return nearest
    end
end

function checkfov(palyers, fov_amount)
    local fov
    local vector = cam:WorldToViewportPoint(palyers.Character:FindFirstChild("Head").Position)
    local magnitude = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
    local cfov = fov_amount
    if magnitude < cfov then
        fov = true
    else
        fov = false
    end
    return fov
end

function visible(person)
    return not next(cam.GetPartsObscuringTarget(cam, {cam.CFrame.Position, person.Character:FindFirstChild("Head").Position}, {lp.Character, person.Character}));
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Novrb1/Scripts/master/UwUWareLib"))()

local aim_tab = Library:CreateWindow("Aimbot")
aim_tab:AddToggle({text = "Enabled", flag = "I", state = false, callback = function(bool)
    masterenabled = bool
end})
aim_tab:AddToggle({text = "Visible Only", flag = "G", state = false, callback = function(bool)
    visibleonly = bool
end})
aim_tab:AddSlider({text = "Fov Circle", flag = "A", value = 75, min = 20, max = 200, float = 5, callback = function(num)
    fov_value = num
end})
aim_tab:AddSlider({text = "Thickness", flag = "Y", value = 3, min = 1, max = 10, float = 0.5, callback = function(num)
    thicknesssa = num
end})
aim_tab:AddList({text = "Aim Part", flag = "H", value = "Head", values = {"Head", "UpperTorso", "LowerTorso"}, callback = function(toggle)
    aimpart = tostring(toggle)
end})
aim_tab:AddList({text = "Aimtypes", flag = "V", value = "Silent Aim", values = {"Camlock", "Silent Aim"}, callback = function(toggle)
    if toggle == "Camlock" then
        silent = false
        camlock = true
    elseif toggle == "Silent Aim" then
        silent = true
        camlock = false
    end
end})
aim_tab:AddSlider({text = "Prediction", flag = "k", value = 1, min = 1, max = 10, float = 0.5, callback = function(num)
    preidicion = num
end})
aim_tab:AddBind({text = "Aimlock Bind", flag = "q", hold = true, key = "Q" , callback = function(bind)
    keyss = not bind
end})
aim_tab:AddBind({text = "Toggle UI", key = "RightShift", callback = function()
    Library:Close()
end})

local msc_tab = Library:CreateWindow("Misc.")
msc_tab:AddSlider({text = "Field Of View", flag = "F", value = cam.FieldOfView, min = 10, max = 120, float = 5, callback = function(num)
    cfov = num
end})
msc_tab:AddList({text = "Lighting", flag = "x", value = "Day", values = {"Day", "Night"}, callback = function(toggle)
    if toggle == "Day" then
        day = true
        night = false
    elseif toggle == "Night" then
        day = false
        night = true
    end
end})

Library:Init()

rservice.Stepped:Connect(function()
    local closestLOL = getClosestMouse()
    if masterenabled and camlock and keyss and closestLOL ~= nil and checkfov(closestLOL, fov_value) then
        if visibleonly then
            if visible(closestLOL) then
                cam.CFrame = CFrame.new(cam.CFrame.p, closestLOL.Character:FindFirstChild(aimpart).Position + closestLOL.Character:FindFirstChild(aimpart).Velocity / preidicion + closestLOL.Character:FindFirstChild(aimpart).RotVelocity / 5)
            end
        else
            cam.CFrame = CFrame.new(cam.CFrame.p, closestLOL.Character:FindFirstChild(aimpart).Position + closestLOL.Character:FindFirstChild(aimpart).Velocity / preidicion + closestLOL.Character:FindFirstChild(aimpart).RotVelocity / 5)
        end
    end
end)

local OldCall
OldCall = hookmetamethod(game, "__namecall", function(self, ...) -- 1st is game of course 2nd you can do __namecall __index __newindex
    local Method = getnamecallmethod()
    local Args = {...}
    if Method == "FireServer" and tostring(self) == "MainRemote" and Args[3] == "P" then
        if masterenabled and silent then
            local getclose = getClosestMouse()
            if getclose and checkfov(getclose, fov_value) then
                if visibleonly then
                    if visible(getclose) then
                        Args[2] = getclose.Character:FindFirstChild(aimpart).Position+ getclose.Character:FindFirstChild(aimpart).Velocity / preidicion + getclose.Character:FindFirstChild(aimpart).RotVelocity / 5
                        return self.FireServer(self, unpack(Args))
                    end
                else
                    Args[2] = getclose.Character:FindFirstChild(aimpart).Position+ getclose.Character:FindFirstChild(aimpart).Velocity / preidicion + getclose.Character:FindFirstChild(aimpart).RotVelocity / 5
                    return self.FireServer(self, unpack(Args))
                end
            end
        end
    end
    return OldCall(self, ...)
end)

spawn(function()
    while wait() do
        cam.FieldOfView = cfov
    end
end)

game:GetService("Lighting").Changed:Connect(function()
    if day then
        game:GetService("Lighting").ClockTime = 14
    elseif night then
        game:GetService("Lighting").ClockTime = 0
    end
end)
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").ShadowSoftness = 0
game:GetService("Lighting").Brightness = 1
game:GetService("Lighting").FogEnd = 9e9
game:GetService("Lighting").FogStart = 9e9
lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
lp.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), lp.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
