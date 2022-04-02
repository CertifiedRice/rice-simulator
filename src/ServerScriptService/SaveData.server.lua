local DS = game:GetService("DataStoreService"):GetDataStore("SaveData")
game.Players.PlayerAdded:Connect(function(plr)
    wait()
    local plrkey = "id_"..plr.UserId
    local save1 = plr.leaderstats.eaten
    local save2 = plr.leaderstats.cash
    local save3 = plr.leaderstats.rebirth

    local GetSaved = DS:GetAsync(plrkey)
    if GetSaved then 
        save1.Value = GetSaved[1]
        save2.Value = GetSaved[2]
        save3.Value = GetSaved[3]
    else
        local NumberForSaving = {save1.Value, save2.Value, save3.Value}
        DS:GetASync(plrkey, NumberForSaving)
    end
end)

game.Players.PlayerRemoving:Connect(function(plr)
    DS:SetAsync("id_"..plr.UserId, {plr.leaderstats.eaten.Value, plr.leaderstats.cash.Value, plr.leaderstats.rebirth.Value})
end)