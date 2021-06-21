-- A basic monster script skeleton you can copy and modify for your own creations.
comments = {"Smells like the work\rof an enemy stand.", "Frisk is posing like his\rlife depends on it.", "Frisk's limbs shouldn't be\rmoving in this way."}
commands = {"Call", "Apologize", "Act 3"}
randomdialogue = {"..."}

sprite = "Frisk" --Always PNG. Extension is added automatically.
name = "Frisk"
hp = 100
atk = 1
def = 1
check = "[color:ff0000] You Already Know Who I am."
dialogbubble = "right" -- See documentation for what bubbles you have available.
canspare = false
cancheck = true

-- Happens after the slash animation but before 
function HandleAttack(attackstatus)
    if attackstatus == -1 then
        -- player pressed fight but didn't press Z afterwards
    else
        -- player did actually attack
    end
end
 
-- This handles the commands; all-caps versions of the commands list you have above.
function HandleCustomCommand(command)
    if command == "CALL" then
        BattleDialog({"I Called for Help.\n.[w:30].[w:30].[w:30]\n[color:ff0000]But Nobody Came..."})
    elseif command == "APOLOGIZE" then
        BattleDialog({"I say that I'm sorry[w:5].[w:5].[w:5].\n[color:ff0000][w:5]But I don't care."})
    elseif command == "ACT 3" then
        currentdialogue = {"Selected\nAct 3."}
    end
end