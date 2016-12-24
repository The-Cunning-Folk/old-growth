
--changeLevel("qa_space")
--print(lua_tolstring(getObject("auto_obj_2")))
input = get_global_input()

input:set_key_input("test","1")

keysdown = input:get_keys_down()
if(input:key_toggled("test")) then
	print("Hi")
	if(get_object("house_1").active) then
		deactivate_object("house_1")
	else
		activate_object("house_1")
	end
	
end

