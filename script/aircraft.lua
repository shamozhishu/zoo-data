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
	if not dof:isLLA() then
		dof:moveBy(x * math.sin(t), y * math.cos(t), z * math.sin(t))
	end
end

function LateUpdate()
end

function Exit()
end

function Finish()
end
