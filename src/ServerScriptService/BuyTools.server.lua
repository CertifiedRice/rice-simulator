game.ReplicatedStorage.ToolEvents.ramenEvent.OnServerEvent:Connect(function(player)
	if player.leaderstats.cash.Value >= 5000 then
		player.leaderstats.cash.Value = player.leaderstats.cash.Value - 5000
		game.ServerStorage.Tools.Ramen:Clone().Parent = player.Backpack
	end
end)

game.ReplicatedStorage.ToolEvents.friedriceEvent.OnServerEvent:Connect(function(player)
	if player.leaderstats.cash.Value >= 500 then
		player.leaderstats.cash.Value = player.leaderstats.cash.Value - 500
		game.ServerStorage.Tools["Fried Rice"]:Clone().Parent = player.Backpack
	end
end)