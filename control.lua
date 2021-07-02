
local function OnPlayerSelectedArea(event)
    if event.item ~= "Empty Miner Deconstructor"
    then return end
    
    local player = event.player_index ~= nil and game.get_player(event.player_index) or nil
	if not player
	or not player.valid
	then return end
    for _, entity in ipairs(event.entities)
    do
        if entity.valid
        and entity.type == "mining-drill" and entity.status == 17
        then
            entity.order_deconstruction("player")
        end
    end
end



local function OnPlayerDroppedItem(event)
	local entity = event.entity
	if entity
	and entity.valid
	and entity.stack
	and entity.stack.name == "Empty Miner Deconstructor"
	then
		entity.stack.clear()
	end
end

script.on_event(defines.events.on_player_dropped_item, function(event) OnPlayerDroppedItem(event) end)
script.on_event(defines.events.on_player_selected_area, function(event) OnPlayerSelectedArea(event) end)
script.on_event(defines.events.on_player_alt_selected_area, function(event) OnPlayerSelectedArea(event) end)