require "karma"
spawntimer = 0
bullets = {}

function CreateBullet(x, y)
	local bullet = CreateProjectile("Knife", x, y)
	table.insert(bullets, bullet)
end

function Update()

	if spawntimer % 30 == 0 then
		for i = 0, 0, 1
		do
			local xPos = -Arena.width / 2 + i * Arena.width / 4
			local yPos = Arena.height / 2 - 30
			CreateBullet(xPos, yPos)
		end
	end
	if spawntimer % 30 == 0 then
		for i = 0, 0, 1
		do
			local xPos = -Arena.width / 2 + i * Arena.width / 4
			local yPos = Arena.height / 2 - 95
			CreateBullet(xPos, yPos)
		end
	end

	for i = #bullets, 1, -1
	do
		currentBullet = bullets[i]
		
		currentBullet.Move(2, 0)

		if currentBullet.y < -170 then
			currentBullet.Remove()
			table.remove(bullets, i)
		end
	end

	spawntimer = spawntimer + 1
end
