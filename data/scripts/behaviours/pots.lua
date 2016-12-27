Pot = {}

--called on spawn
function Pot:start(self)
end

--called upon activation
function Pot:wake(self)
end

--called every loop
function Pot:update(self)
	print(self.name)
end

--called when the object is made inactive
function  Pot:sleep(self)
end

-- called upon deactivation
function Pot:finish(self)
end