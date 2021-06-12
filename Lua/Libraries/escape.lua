unescape = true 
quittimer = 0
xdtimer = 0
a = 0
function EscapeAnim(kind)
if GetGlobal("turnoffescapeanim") ~= true then 
if Input.GetKey("Escape") == 1 then 
escapecancel = false 
xdtimer = xdtimer + 1
xdtop = CreateLayer("xdtop","VeryHighest",true)
test = CreateSprite("Quitting/2", "xdtop")
test.SetAnimation({"Quitting/0","Quitting/1","Quitting/2","Quitting/3"},0.2)-- lmao
test.absx = 84
test.absy = 446 
elseif Input.GetKey("Escape") == 2 then 
escapevar = true  
elseif Input.GetKey("Escape") == -1 then 
test.MoveTo(0,10000)
escapecancel = true 
escapevar = false 
a = 0 
end




if escapevar == true then 
a =a + 1
quittimer = quittimer + 1
if Input.GetKey("Escape") == 1 then 
xdxdtop = CreateLayer("xdxdtop","VeryHighest",true)
quit = CreateSprite("Quitting/2","xdxdtop")
quit.SetAnimation({"Quitting/2","Quitting/3"},1)
quit.absx = 84
quit.absy = 446

elseif Input.GetKey("Escape") == 2 and a >= 75 then -- put the amount of FPS it takes to exit where >= is.
if kind == nil then 
State("DONE")
elseif kind == "DESTROY" then 
Misc.DestroyWindow()
end


end
end
if escapecancel == true then
escapevar = false 
a = 0
end
end
end