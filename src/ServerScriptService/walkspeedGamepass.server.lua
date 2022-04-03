local gamepass = 37917865
local market = game:GetService("MarketplaceService")

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if market:UserOwnsGamePassAsync(player.UserId, gamepass) then
            local h = character:WaitForChild("Humanoid")
            h.WalkSpeed = 50
        end
    end)
end)