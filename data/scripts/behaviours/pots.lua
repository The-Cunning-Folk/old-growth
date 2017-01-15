Pot = {o_x=0,o_y=0,p={}}

--called on spawn
function Pot:start(object)
	t = get_level(object.level).store:get_transform(object.transform)
	self.o_x = t.position.x
	self.o_y = t.position.y
	for i=1,10 do
		self.p[i] = create_object("qa_space","pot_shard_1")
		tp = get_level("qa_space").store:get_transform(self.p[i].transform)
		tp:set_position(self.o_x,self.o_y)
		self.p[i].active = false
	end
	
end

--called upon activation
function Pot:wake(object)
	t = get_level(object.level).store:get_transform(object.transform)
	t:set_position(self.o_x,self.o_y)
end

--called every loop
function Pot:update(object)
	if(math.random(10)> 5) then
		--t = get_obj_transform(object.name)
		--print(t.position.x)
		--print(t.position.y)
		--t:move(math.random(20)*0.1-1,math.random(20)*0.1-1)
	end
end

--called when the object is made inactive
function  Pot:sleep(object)
end

-- called upon deactivation
function Pot:finish(object)
end