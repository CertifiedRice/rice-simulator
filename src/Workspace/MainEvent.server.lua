local BadgeService = game:GetService("BadgeService")
local id = 2125784292

script.Parent.addEaten.onServerEvent:Connect(function(player)
    player.leaderstats.eaten.Value = player.leaderstats.eaten.Value + 1
    if not BadgeService:UserHasBadgeAsync(player.UserId, id) then
        BadgeService:AwardBadge(player.UserId, id)
    end
end)