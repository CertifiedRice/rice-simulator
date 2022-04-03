local rc = 100

local debounce = true
game.Workspace.Map.cashdoor.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        if player.leaderstats.cash.Value >= rc then
            if debounce then
                debounce = false
                game.Workspace.Map.cashdoor.Transparency = 0.5
                game.Workspace.Map.cashdoor.CanCollide = false
                if rc.Value <= rc then
                    game.Workspace.Map.cashdoor.Transparency = 0.15
                    game.Workspace.Map.cashdoor.CanCollide = true
                end
            end
        end
        end
end)