for i,v in pairs(getconnections(game:GetService('Players').LocalPlayer.Idled)) do
    v:Disable()
end)

-- new better version

--[[ this is old
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
--]]
