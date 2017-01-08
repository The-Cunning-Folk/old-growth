Pot = {val=1}

--called on spawn
function Pot:start(object)
end

--called upon activation
function Pot:wake(object)
end

--called every loop
function Pot:update(object)
	if(math.random(10)> 5) then
		t = get_obj_transform(object)
		t:move(math.random(20)*0.1-1,math.random(20)*0.1-1)
	end
end

--called when the object is made inactive
function  Pot:sleep(object)
end

-- called upon deactivation
function Pot:finish(object)
end