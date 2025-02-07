local GroupIDS = 34388963
local GroupRANKS = {255, 254}
local AdminUserIds = {5504744037} -- Add user IDs here

local player = game.Players.LocalPlayer

local function IsAdmin()
	-- Check if the player's user ID is in the AdminUserIds list
	for _, userId in ipairs(AdminUserIds) do
		if player.UserId == userId then
			script.Parent.Parent.UI.OpenButton.Visible = true
			script.Parent.Parent.UI.AdminNotify.Visible = true
			warn("Admin joined the game: ".. player.Name)
			return
		end
	end

	-- Check if the player's group rank is in the GroupRANKS list
	local rank = player:GetRankInGroup(GroupIDS)
	for _, adminRank in ipairs(GroupRANKS) do
		if rank == adminRank then
			script.Parent.Parent.UI.OpenButton.Visible = true
			script.Parent.Parent.UI.AdminNotify.Visible = true
			warn("Admin joined the game: ".. player.Name)
			return
		end
	end
	script.Parent.Parent.UI.AdminNotify.Visible = false
	script.Parent.Parent.UI.OpenButton.Visible = false
end

-- Call the function to check if the player is an admin
IsAdmin()
