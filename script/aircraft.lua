function Init()
	logger:info"I'm a aircraft!"
end

function Start()
end

function Enter()
end

function Update()
	local x = 1000;
	local y = 1000;
	local z = 50;
	local t = os.time();
	if not dof:isLLH() then
		dof:setPos(dof:getPosX() + x * math.sin(t), dof:getPosY() + y * math.cos(t), dof:getPosZ() + z * math.sin(t));
	end
end

function LateUpdate()
end

function Exit()
end

function Finish()
end
