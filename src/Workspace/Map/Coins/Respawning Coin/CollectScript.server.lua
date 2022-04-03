local db = true
script.Parent.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") ~= nil then
		if db == true then
			db = false
			script.Parent.Transparency = 1
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			player.leaderstats.cash.Value = player.leaderstats.cash.Value + 1
			script.Sound:Play()
			script.Parent.Transparency = 1
			wait(1)
			db = true
			script.Parent.Transparency = 0
		end
	end	
end)