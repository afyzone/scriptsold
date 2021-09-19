local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "L my son";
    "get off the game";
    "ur trash how u lose";
    "U just got rocked son";
    "ur bad";
    "ez";
    "my grandma has more skill than you";
    "trash";
    "xd";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "ahahahahahahaha";
    "bad";
    "so trash";
    "so bad";
    "look he's mad";
    "cry more";
    "keep crying";
    "XD";
    "time to take out the trash";
    "I'm surprised you haven't quit yet";

}

function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.B and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
