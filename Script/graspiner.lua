local frame = script.Parent
local gradient = frame:WaitForChild("UIGradient")

local rotationSpeed = 0.6 -- You can adjust rotation speed here

local function rotateGradient()
	while true do
		task.wait(0.05)
		gradient.Rotation = (gradient.Rotation + rotationSpeed) % 360
	end
end

spawn(rotateGradient)
