local cooldown = false
local Tool = script.Parent
local Animation = script.Parent:WaitForChild("Animation")

Tool.Activated:Connect(function()
	local Character = Tool.Parent
	local Humanoid = Character.Humanoid

	local AnimationTrack = Humanoid:LoadAnimation(Animation)
	AnimationTrack:Play()

	if cooldown == false then
		cooldown = true

		game.Workspace.addEaten:FireServer()
		script.Parent.Enabled = false
		wait(.5)
		script.Parent.Enabled =  true
		cooldown = false
	end

end)