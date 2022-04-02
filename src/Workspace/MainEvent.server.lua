script.Parent.addEaten.onServerEvent:Connect(function(player)
    player.leaderstats.eaten.Value = player.leaderstats.eaten.Value + 1
end)