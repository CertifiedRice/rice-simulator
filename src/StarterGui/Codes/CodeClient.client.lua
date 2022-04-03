local Codes = {"Rice", "Cash100", "Twitter"}
local RemoteEvent = game.ReplicatedStorage.CodeEvent

script.Parent.Frame.EnterButton.MouseButton1Click:Connect(function()
    if script.Parent.Frame.InputBox.Text == Codes[1] then
        RemoteEvent:FireServer(500, Codes[1])
    else
        if script.Parent.Frame.InputBox.Text == Codes[2] then
            RemoteEvent:FireServer(100, Codes[2])
        else
            if script.Parent.Frame.InputBox.Text == Codes[3] then
                RemoteEvent:FireServer(50, Codes[3])
            end
        end
    end
end)