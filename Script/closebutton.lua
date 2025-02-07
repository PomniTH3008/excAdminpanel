local frame=script.Parent.Parent.Parent
local button=script.Parent
local o=button.Parent.Parent.Parent.OpenButton

button.MouseButton1Click:Connect(function()
	frame.Visible = false
	o.Visible=true
end)
