local event = game.ReplicatedStorage.RebirthEvent
local text = script.Parent.Frame.TextLabel

local player = game.Players.LocalPlayer

script.Parent.Frame.rebirthButton.MouseButton1Click:Connect(function()
    -- event:FireServer()

    if player.leaderstats.cash.Value >= 10000 then
        event:FireServer(player)
    else
		text.Text = "You don't have enough cash!!!"
		text.TextColor3 = Color3.fromRGB(255, 0, 0)
       wait(3)
		text.Text = "Requires 10,000 Cash to rebirth!"
		text.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)