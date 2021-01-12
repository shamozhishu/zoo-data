function Init()
	logger:info'truck: Init()'
end

function Start()
	logger:info'truck: Start()'
end

function Enter()
	logger:info'truck: Enter()'
end

function Update()
	logger:info'truck: Update()'
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

function LateUpdate()
	logger:info'truck: LateUpdate()'
end

function Exit()
	logger:info'truck: Exit()'
end

function Finish()
	logger:info'truck: Finish()'
end
