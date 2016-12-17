
--changeLevel("qa_space")
--print(lua_tolstring(getObject("auto_obj_2")))
input = get_global_input()

keysdown = input:get_keys_down()
if(input:key_pressed("test")) then
	activate_object("house_1")
end

input:set_key_input("test","1")