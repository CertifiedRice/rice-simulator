local badgeservice = game:GetService("BadgeService")
local id = 2125784425

script.Parent.Map.Dessert.dessert.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then

        local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
        badgeservice:AwardBadge(plr.UserId, id)
    end
end)