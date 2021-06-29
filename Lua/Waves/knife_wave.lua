-- this is so The Karma Works (you should know this)
require "karma"

-- These are timers btw lol
urmom = 0
timer = 0
attacks = 0
die = 0

box = CreateSprite("px","BelowPlayer")
box.absx = 320
box.absy = 160
box.xscale = 155 
box.yscale = 130
box.Mask("box")
box.alpha = 0

Movimiento = {}

function Update()
	box.absx = Arena.currentx
	box.absy = Arena.currenty + Arena.currentheight / 2
	box.xscale = Arena.currentwidth 
	box.yscale = Arena.currentheight
	timer = timer + 1
	urmom = urmom + 1
	die = die + 1
	if timer == 40 then
		if attacks < 1145 then
			misil = CreateProjectile('knifeinverse', 160, -35, 'BelowPlayer')
			misil.sprite.SetParent(box)
			misil.SetVar("velx", -3)
			misil.SetVar("vely", 0)
			misil.SetVar("gir", 0)	
			misil.SetVar("lifetime", -100)
			table.insert(Movimiento,misil)
			misil = CreateProjectile('knife', -160, 35, 'BelowPlayer')
			misil.sprite.SetParent(box)
			misil.SetVar("velx", 3)
			misil.SetVar("vely", 0)
			misil.SetVar("gir", 0)	
			misil.SetVar("lifetime", -100)
			table.insert(Movimiento,misil)
		end
		timer = 0
		attacks = attacks + 1
	end
	if urmom == 60 then
		if attacks < 1145 then
			misil = CreateProjectile('BeegBullet', -160, 0, 'BelowPlayer')
			misil.sprite.SetParent(box)
			misil.SetVar("velx", 7)
			misil.SetVar("vely", 0)
			misil.SetVar("gir", 0)	
			misil.SetVar("lifetime", -1)
			table.insert(Movimiento,misil)
		end
		urmom = 0
		attacks = attacks + 1
	end
	for i=1,#Movimiento do
		local misil = Movimiento[i] 
		if misil.isactive then
			local velx = misil.GetVar("velx")
			local vely = misil.GetVar("vely")
			local gir = misil.GetVar("gir")
			local alpha = misil.GetVar("alpha")
			misil.Move(velx, vely)
			misil.sprite.rotation = misil.sprite.rotation + gir
		end
	end
end
function OnHit()
    KarmaHurt()
end