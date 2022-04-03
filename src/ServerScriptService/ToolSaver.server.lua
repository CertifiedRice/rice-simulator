local dss = game:GetService("DataStoreService")
local toolsDS = dss:GetDataStore("ToolsData")
 
local toolsFolder = game.ServerStorage.Tools
 
game.Players.PlayerAdded:Connect(function(plr)
    
    local toolsSaved = toolsDS:GetAsync(plr.UserId .. "-tools") or {}
    
    for i, toolSaved in pairs(toolsSaved) do
            
        if toolsFolder:FindFirstChild(toolSaved) then 
            
            toolsFolder[toolSaved]:Clone().Parent = plr.Backpack
            toolsFolder[toolSaved]:Clone().Parent = plr.StarterGear 
        end
    end
    
    plr.CharacterRemoving:Connect(function(char)
        
        char.Humanoid:UnequipTools()
    end)
end)
 
 
game.Players.PlayerRemoving:Connect(function(plr)
    
    local toolsOwned = {}
    
    for i, toolInBackpack in pairs(plr.Backpack:GetChildren()) do
        
        table.insert(toolsOwned, toolInBackpack.Name)
    end
    
    local success, errormsg = pcall(function()
        
        toolsDS:SetAsync(plr.UserId .. "-tools", toolsOwned)
    end)
    if errormsg then warn(errormsg) end
end)