local event = game.ReplicatedStorage.RebirthEvent

event.onServerEvent:Connect(function(player)
    player.leaderstats.cash.Value = 0
    player.leaderstats.eaten.Value = 0
    player.leaderstats.rebirth.Value = player.leaderstats.rebirth.Value + 1
end)