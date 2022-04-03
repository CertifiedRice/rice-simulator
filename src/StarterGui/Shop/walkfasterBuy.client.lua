local gamepassId = 38118249

local MarketplaceService = game:GetService("MarketplaceService")

local player = game.Players.LocalPlayer

script.Parent.Gamepass.doublespeed.buy.MouseButton1Click:Connect(function()
    local success, message = pcall(function()
        hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, gamepassId)
    end)

    if hasPass then 
        script.Parent.Gamepass.warning.Text = "You already own this gamepass!"
        wait(2)
        script.Parent.Gamepass.warning.Text = ""
    else
        MarketplaceService:PromptGamePassPurchase(player, gamepassId)
    end
end)