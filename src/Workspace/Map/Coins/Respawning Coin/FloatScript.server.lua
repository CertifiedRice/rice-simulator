while true do
	for i = 1,4 do
		script.Parent.CFrame = script.Parent.CFrame + Vector3.new(0, 0.1, 0)
		wait(0.1)
	end
	for i = 1,4 do
		script.Parent.CFrame = script.Parent.CFrame + Vector3.new(0, -0.1, 0)
		wait(0.1)
	end
	wait(0.1)
end