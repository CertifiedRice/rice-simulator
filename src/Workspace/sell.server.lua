local part = script.Parent.Sell.sellPart

part.Touched:Connect(function(hit)
    local h = hit.Parent:FindFirstChild("Humanoid")
    if h then
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
    if player then 
        local leaderstats = player:WaitForChild("leaderstats")
        local cash = leaderstats.cash
        local selling = leaderstats.eaten 
            if selling.Value >= 0 then
                cash.Value = cash.Value + selling.Value*1
                selling.Value = 0
            end
        end
    end
end)