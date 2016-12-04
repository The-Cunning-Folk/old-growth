
--changeLevel("qa_space")
--print(lua_tolstring(getObject("auto_obj_2")))
input = get_global_input()

keysdown = input:get_keys_down()
if(input:key_pressed("test")) then
	p1t = get_transform(1)
	p1t:move(0,1)
end

events = get_global_events()

for k,ev in pairs(events) do 
	if(string.match(ev.script,"collision")) then
		if(string.match(ev.script,"player_1")) then
			if(string.match(ev.script,"house_1")) then
				change_level("qa_space")
			end
		end
	end
end

input:set_key_input("test","1")