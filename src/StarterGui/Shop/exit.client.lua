local button = script.Parent.Frame.exit

button.MouseButton1Click:Connect(function()
    script.Parent.Frame.Visible = false
end)

script.Parent.Gamepass.exit.MouseButton1Click:Connect(function()
    script.Parent.Gamepass.Visible = false
end)