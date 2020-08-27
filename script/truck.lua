function Init()
	logger:info"I'm a truck!"
end

function Update()
	if input:keyDown(input.KEY_NUMPAD1) then
		logger:info"left"
		dof:setPos(dof:getPosX() - 100, dof:getPosY(), dof:getPosZ());
	elseif input:keyDown(input.KEY_NUMPAD3) then
		logger:info"right"
		dof:setPos(dof:getPosX() + 100, dof:getPosY(), dof:getPosZ());
	elseif input:keyDown(input.KEY_NUMPAD5) then
		logger:info"up"
		dof:setPos(dof:getPosX(), dof:getPosY() + 100, dof:getPosZ());
	elseif input:keyDown(input.KEY_NUMPAD2) then
		logger:info"down"
		dof:setPos(dof:getPosX(), dof:getPosY() - 100, dof:getPosZ());
	end
end
