return {
	Name = "give";
	Aliases = {"gives", "giv", "gibs"};
	Description = "Gives player a certain amount of value to their leaderstats";
	Group = "DefaultAdmin";
	Args = {
		{
			Type = "players";
			Name = "victims";
			Description = "The player to give to.";
		},
	};

	Run = function(_, index, list)
		return game.Players.victims.leaderstats.cash.Values == game.Players.victims.leaderstats.cash.Values + 1
	end
}