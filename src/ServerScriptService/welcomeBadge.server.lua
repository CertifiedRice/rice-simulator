local BadgeService = game:GetService("BadgeService")
local id = 2125784204

game.Players.PlayerAdded:Connect(function(plr)
    if not BadgeService:UserHasBadgeAsync(plr.UserId, id) then
        BadgeService:AwardBadge(plr.UserId, id)
    end
end)