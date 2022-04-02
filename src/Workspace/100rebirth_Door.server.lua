local rc = 100

local debounce = true
game.Workspace.Map.rebirthdoor.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        if player.leaderstats.rebirth.Value >= rc then
            if debounce then
                debounce = false
                game.Workspace.Map.rebirthdoor.Transparency = 0.5
                game.Workspace.Map.rebirthdoor.CanCollide = false
                if rc.Value <= rc then
                    game.Workspace.Map.rebirthdoor.Transparency = 0.15
                    game.Workspace.Map.rebirthdoor.CanCollide = true
                end
            end
        end
        end
end)