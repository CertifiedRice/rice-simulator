return function (registry)
	registry:RegisterHook("BeforeRun", function(context)
		if context.Group == "DefaultAdmin" and context.Executor.UserId ~= game.CreatorId then
			return "This is an Admin command, you do not have permission to run this command."
		end
	end)
end
