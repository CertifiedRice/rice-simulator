game.Players.PlayerAdded:Connect(function(player)
    local stats = Instance.new("Folder", player)
    stats.Name = "leaderstats"
    stats.Parent = player

    local eaten = Instance.new("IntValue")
    eaten.Name = "eaten"
    eaten.Value = 0
    eaten.Parent = stats

    local cash = Instance.new("IntValue")
    cash.Name = "cash"
    cash.Value = 0
    cash.Parent = stats

    local rebirth = Instance.new("IntValue")
    rebirth.Name = "rebirth"
    rebirth.Value = 0
    rebirth.Parent = stats
end)