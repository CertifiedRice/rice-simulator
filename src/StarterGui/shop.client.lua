game.Workspace.Shop.shopPart.Touched:Connect(function(hit)
    if hit then
        script.Parent.Shop.Frame.Visible = true
    end
end)