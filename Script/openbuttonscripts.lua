local gui = script.Parent

local frame = script.Parent
local gradient = frame:WaitForChild("UIGradient")

local rotationSpeed = 10 -- You can adjust rotation speed here

local function rotateGradient()
	while true do
		task.wait(0.05)
		gradient.Rotation = (gradient.Rotation + rotationSpeed) % 360
	end
end

spawn(rotateGradient)

gui.MouseEnter:Connect(function()
	gui.UIStroke.Transparency = 0
end)

gui.MouseLeave:Connect(function()
	gui.UIStroke.Transparency = 1
end)


local frame = script.Parent.Parent.MainFrame
local load = script.Parent.Parent.Loading

gui.MouseButton1Click:Connect(function()
	load.Visible = true
	gui.Visible = false
	wait(1)
	load.Statue.Text = "y"
	wait(0.01)
	load.Statue.Text = "yo"
	wait(0.01)
	load.Statue.Text = "you"
	wait(0.01)
	load.Statue.Text = "your"
	wait(0.02)
	load.Statue.Text = "your a"
	wait(0.01)
	load.Statue.Text = "your an"
	wait(0.02)
	load.Statue.Text = "your an a"
	wait(0.01)
	load.Statue.Text = "your an ad"
	wait(0.01)
	load.Statue.Text = "your an adm"
	wait(0.01)
	load.Statue.Text = "your an admi"
	wait(0.01)
	load.Statue.Text = "your an admin"
	wait(1)
	load.Statue.Text = "s"
	wait(0.01)
	load.Statue.Text = "so"
	wait(0.02)
	load.Statue.Text = "so y"
	wait(0.01)
	load.Statue.Text = "so ye"
	wait(0.01)
	load.Statue.Text = "so yea"
	wait(0.01)
	load.Statue.Text = "so yeah"
	wait(1)
	load.Statue.Text = "h"
	wait(0.01)
	load.Statue.Text = "ha"
	wait(0.01)
	load.Statue.Text = "hav"
	wait(0.01)
	load.Statue.Text = "have"
	wait(0.02)
	load.Statue.Text = "have a"
	wait(0.02)
	load.Statue.Text = "have a g"
	wait(0.01)
	load.Statue.Text = "have a go"
	wait(0.01)
	load.Statue.Text = "have a goo"
	wait(0.01)
	load.Statue.Text = "have a good"
	wait(0.02)
	load.Statue.Text = "have a good d"
	wait(0.01)
	load.Statue.Text = "have a good da"
	wait(0.01)
	load.Statue.Text = "have a good day"
	wait(0.01)
	load.Statue.Text = "have a good day!"
	wait(2)
	load.Visible = false
	frame.Visible = true
	load.Statue.Text = ""
end)

local UserInputService = game:GetService("UserInputService")
local gui = gui

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)
