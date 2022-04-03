local RemoteEvent = game.ReplicatedStorage.CodeEvent

RemoteEvent.OnServerEvent:Connect(function(Player, Reward, Code)
    if Player:FindFirstChild(Code) == nil then
        local Redeemed = Instance.new("BoolValue", Player)
        Redeemed.Name = Code
        Redeemed.Value = false

        if Redeemed.Value == false then
            Player.leaderstats.cash.Value += Reward 
            Redeemed.Value = true
        end
    end
end)