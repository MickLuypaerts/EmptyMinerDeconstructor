data:extend(
{
	{
		type = "selection-tool",
		name = "Empty Miner Deconstructor",
		icon = "__EmptyMinerDeconstructor__/graphics/empty-miner-deconstructor.png",
		icon_size = 64,
		flags = { "spawnable" },
		subgroup = "tool",
		order = "c[automated-construction]-b[deconstruction-planner]",
		stack_size = 1,
		stackable = false,
		selection_color = { r = 0, g = 1, b = 0 },
		alt_selection_color = { r = 0, g = 0, b = 1 },
		selection_mode = { "any-entity" },
		alt_selection_mode = { "any-entity" },
		selection_cursor_box_type = "pair",
		alt_selection_cursor_box_type = "pair",
		show_in_library = true,
	}
})