while wait() do 
    local player = game.Players.LocalPlayer 
    script.Parent.Eaten.Text = "🍚".."Eaten: "..player:WaitForChild("leaderstats"):FindFirstChild("eaten").Value
end
