function Init()
	logger:info"I'm a flight!"
	last_time = os.time()
	last_idx = 1
	way_point_lon = {-65, -64.5, -63.9, -63.8, -63.5}
	way_point_lat = {4, 3.5, 3.5, 4.2, 4}
	offset = 0.01
	total = 0
	begin_pos = last_idx
	end_pos = begin_pos + 1
end

function Start()
end

function Enter()
end

function GetInterpolated(me, other, d)
	inv = 1.0 - d
	return me * inv + other * d
end

function Update()
	lon = GetInterpolated(way_point_lon[begin_pos], way_point_lon[end_pos], total)
	lat = GetInterpolated(way_point_lat[begin_pos], way_point_lat[end_pos], total)
	dof:setPos(lon, lat, 10000.0, true)
	dof:setRot(dof:getHeading() + math.sin(os.time()), dof:getPitch(), dof:getRoll() + math.cos(os.time()))
	total = total + offset * (os.time() - last_time)
	last_time = os.time()
	if total >= 1 then
		total = 0
		last_idx = last_idx + 1
		if last_idx == 5 then
			last_idx = 0
			begin_pos = 5
			end_pos = 1
		else
			begin_pos = last_idx
			end_pos = begin_pos + 1
		end
	end
end

function LateUpdate()
end

function Exit()
end

function Finish()
end
