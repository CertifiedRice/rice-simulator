local badgeservice = game:GetService("BadgeService")
local id = 2125784311

script.Parent.Sell.sellPart.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then

        local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
        badgeservice:AwardBadge(plr.UserId, id)
    end
end)