data:extend(
{
	{
		type = "technology",
		name = "atomic-artillery",
		icon_size = 128,
		icon = "__AtomicArtillery__/graphics/technology/atomic-artillery.png",
		effects =
		{
			{
			    type = "unlock-recipe",
			    recipe = "atomic-artillery-shell"
	    	}
		},
		prerequisites = {"artillery"},
		unit =
		{
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"military-science-pack", 1},
				{"high-tech-science-pack", 1},
			},
			time = 30,
			count = 5000
		},
		order = "d-e-g"
	},
}
)