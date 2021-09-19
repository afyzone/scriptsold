local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local table = {"U just got rocked son","ur trash how u lose","get off the game","L son"}
local value = math.random(1,#table)
local picked_value = table[value]

bind = "b" 

mouse.KeyDown:connect(function(key)
if key == bind then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(picked_value),"All")
end
end)
