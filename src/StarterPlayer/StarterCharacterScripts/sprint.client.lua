local UserInputService = game:GetService("UserInputService")
local Character = script.Parent
local Humanoid = Character:WaitForChild("Humanoid")
local isRunning = false

UserInputService.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftShift then
		if not isRunning then
			isRunning = true
			Humanoid.WalkSpeed = 32
		else
			Humanoid.WalkSpeed = 16
			isRunning = false
		end
	end
end)
