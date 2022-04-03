local damage = script.Parent.Configurations.Damage.Value -- getting damage per hit

for i, v in pairs(script.Parent.Body:GetChildren()) do -- getting possible spikes
	if v.Name == "Pokey" then -- if it is one of the spikes
		v.Touched:connect(function(hit) -- then if it is hit
			if hit.Parent and hit.Parent:FindFirstChild("Humanoid") and script.Parent.Configurations.CanDamage.Value == true then -- if it meets the criteria
				hit.Parent.Humanoid:TakeDamage(damage) -- then DEAL DAMAGE! :P
			end
		end)
	end
end
