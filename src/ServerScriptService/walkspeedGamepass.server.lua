local id = 37917865
 
game:GetService("MarketplaceService").PromptGamePassPurchaseFinished:Connect(function(plr,ido,purchased)
 if purchased and ido == id then
  plr.Character.Humanoid.WalkSpeed = 16
 end
end)
 
game.Players.PlayerAdded:Connect(function(plr)
 plr.CharacterAdded:connect(function(char)
  if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players[char.Name].UserId, id) then
   char.Humanoid.WalkSpeed = 50
  end
 end)
end)