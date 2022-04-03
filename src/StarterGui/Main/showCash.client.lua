while wait() do
    local player = game.Players.LocalPlayer
    script.Parent.cash.Text = "💵 Cash: "..player:WaitForChild("leaderstats"):FindFirstChild("cash").Value
end