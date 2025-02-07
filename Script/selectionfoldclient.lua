local dbbutton=script.Parent.Dashboard
local cmdbutton=script.Parent.Commands

local cmdframe=script.Parent.Parent.Menu.Commands
local dbframe=script.Parent.Parent.Menu.Dashboard

dbbutton.MouseButton1Click:Connect(function()
	dbframe.Visible = true
	cmdframe.Visible = false
end)

cmdbutton.MouseButton1Click:Connect(function()
	dbframe.Visible = false
	cmdframe.Visible = true
end)
