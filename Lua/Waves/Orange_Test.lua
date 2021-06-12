require "orange_soul"

timer = 0

ActiveOrange()

function Update()
	UpdateOrange()
	timer = timer + 1
	if timer == 240 then
		EndOrangeWave()
	end
end