local event = game.ReplicatedStorage.RebirthEvent

script.Parent.Frame.rebirthButton.MouseButton1Click:Connect(function()
    event:FireServer()
end)