function Init()
end

function Start()
end

function Enter()
end

function Update()
	if input:keyDown(input.KEY_NUMPAD1) then
		logger:info"left"
		dof:moveBy(-100, 0, 0)
	elseif input:keyDown(input.KEY_NUMPAD3) then
		logger:info"right"
		dof:moveBy(100, 0, 0)
	elseif input:keyDown(input.KEY_NUMPAD5) then
		logger:info"up"
		dof:moveBy(0, 100, 0)
	elseif input:keyDown(input.KEY_NUMPAD2) then
		logger:info"down"
		dof:moveBy(0, -100, 0)
	end
end

function LateUpdate()
end

function Exit()
end

function Finish()
end
