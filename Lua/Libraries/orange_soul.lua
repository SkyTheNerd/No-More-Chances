movingdir = nil

function ActiveOrange()
	Player.SetControlOverride(true)
	Player.sprite.color32 = {252, 166, 0}
end

function UpdateOrange()
	if Input.Up == 1 then
		movingdir = "up"
		Player.sprite.rotation = 180
	end

	if Input.Down == 1 then
		movingdir = "down"
		Player.sprite.rotation = 0
	end

	if Input.Left == 1 then
		movingdir = "left"
		Player.sprite.rotation = 270
	end

	if Input.Right == 1 then
		movingdir = "right"
		Player.sprite.rotation = 90
	end

	if movingdir == "up" then
		Player.move(0, 2)
	end

	if movingdir == "down" then
		Player.move(0, -2)
	end

	if movingdir == "right" then
		Player.move(2, 0)
	end

	if movingdir == "left" then
		Player.move(-2, 0)
	end
end

function EndOrangeWave()
	EndWave()
		Player.sprite.rotation = 0
		Player.sprite.color32 = {252, 0, 0}
end