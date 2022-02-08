local Frame = Instance.new("Frame")
local afyson = Instance.new("TextLabel")
local fr = Instance.new("TextLabel")
local Screenthing = Instance.new("ScreenGui")
Screenthing.Parent = game.CoreGui
Frame.Parent = Screenthing
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.39410004, 0, 0.447865218, 0)
Frame.Size = UDim2.new(0, 175, 0, 84)
Frame.Style = Enum.FrameStyle.DropShadow
afyson.Name = "afyson"
afyson.Parent = Frame
afyson.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
afyson.Position = UDim2.new(0, 0, 0.0119047612, 0)
afyson.Size = UDim2.new(0, 160, 0, 28)
afyson.Font = Enum.Font.SourceSansBold
afyson.Text = "Afy's BP Checker"
afyson.TextColor3 = Color3.fromRGB(0, 0, 0)
afyson.TextSize = 14.000
fr.Name = "fr"
fr.Parent = Frame
fr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fr.Position = UDim2.new(0.00571428612, 0, 0.526643991, 0)
fr.Size = UDim2.new(0, 159, 0, 31)
fr.Font = Enum.Font.SourceSans
fr.Text = ""
fr.TextColor3 = Color3.fromRGB(0, 0, 0)
fr.TextSize = 14.000
local function KACIO_fake_script() -- fr.LocalScript 
	local script = Instance.new('LocalScript', fr)
	while wait() do
	script.Parent.Text = game:GetService("Workspace").LocalPlayer.StandardValues.BattlePower.Value
	end
end
coroutine.wrap(KACIO_fake_script)()
local function RGEING_fake_script() -- Frame.SmoothDrag 
	local script = Instance.new('LocalScript', Frame)

	local Drag = script.Parent.Parent.Frame
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
		local dragging
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local dragTime = 0.04
			local SmoothDrag = {}
			SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
			dragSmoothFunction:Play()
		end
		Drag.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = Drag.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		Drag.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and Drag.Size then
				update(input)
			end
		end)
	
end
coroutine.wrap(RGEING_fake_script)()
