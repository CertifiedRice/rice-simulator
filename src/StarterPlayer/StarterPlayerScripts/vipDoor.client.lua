local player  = game.Players.LocalPlayer
local gamepassid = 38276126

if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(player.UserId, gamepassid) == true then
    game.Workspace.Map.vipdoor.CanCollide = false
    game.Workspace.Map.vipdoor.Transparency = 0.5
end