events = get_global_events()
input = get_global_input()
input:set_key_input("test","1")

for k,ev in pairs(events) do 
	if(string.match(ev.script,"collision")) then
		if(string.match(ev.script,"player_1") and string.match(ev.script,"door")) then
			--get player in current level
			if current_level() == "butterfly_demo" then
				change_level("qa_space")
				p1t = get_obj_transform("player_1")
				p1t.position.x = 100
				p1t.position.y = 140

			elseif current_level() == "qa_space" then
				change_level("butterfly_demo")
				p1t = get_obj_transform("player_1")
				p1t.position.x = 505
				p1t.position.y = 280
			end
		end
	end
end