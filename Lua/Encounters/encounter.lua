-- A basic encounter script skeleton you can copy and modify for your own creations.
require "Libraries/escape"
require "karma"
Player.name = "Chara"
deathmusic = "It's Raining Somewhere Back"
deathtext = {"Curiosity Killed The Fox..."}

music = "Main Theme" --Either OGG or WAV. Extension is added automatically. Uncomment for custom music.
encountertext = "[color:ff0000]1 Left." --Modify as necessary. It will only be read out in the action select screen.
nextwaves = {"knife_wave"}
wavetimer = 4.0
arenasize = {155, 130}

autolinebreak = true

enemies = {
"poseur"
}

enemypositions = {
{0, 0}
}

-- A custom list with attacks to choose from. Actual selection happens in EnemyDialogueEnding(). Put here in case you want to use it.
possible_attacks = {"knife_wave"}

function EncounterStarting()
    -- If you want to change the game state immediately, this is the place.
    ResetBar()
    Player.lv = 19
    Player.hp = 92
    Inventory.AddCustomItems({"G. Tea", "G. Apple", "SnowPiece", "SnowPiece", "SnowPiece"}, {0, 0, 0, 0, 0})
    Inventory.SetInventory({"G. Tea", "G. Apple", "SnowPiece", "SnowPiece", "SnowPiece"})
end

function Update()
    UpdateBar()
    EscapeAnim()
end

function EnemyDialogueStarting()
    -- Good location for setting monster dialogue depending on how the battle is going.
end

function EnemyDialogueEnding()
    -- Good location to fill the 'nextwaves' table with the attacks you want to have simultaneously.
    nextwaves = { possible_attacks[math.random(#possible_attacks)] }
    if nextwaves[1] == "knife_wave" then
        wavetimer = 12
    end
end

function DefenseEnding() --This built-in function fires after the defense round ends.
    encountertext = RandomEncounterText() --This built-in function gets a random encounter text from a random enemy.
end

function HandleSpare()
    State("ENEMYDIALOGUE")
    nextwaves = {"MercyAttack"}
        wavetimer = 100.0
        arenasize = {-10, 10}
end

function HandleItem(ItemID)
    if ItemID == "G. TEA" then
        HealKarma(92)
		BattleDialog({"I drank the [color:ffff00]Golden Flower Tea.[w:5][color:ffffff]\nThe smell reminded Frisk about something...[w:5]\nHealed [color:ffff00]92 [color:ffffff]HP!"})
	elseif ItemID == "SNOWPIECE" then
        HealKarma(45)
        BattleDialog({"I ate the Snowman Piece.\n[w:5][color:ff0000]I Enjoy The Snowman's Crushed Hopes and Dreams.\n[color:ffffff][w:5]I Healed[color:ffff00] 45 [color:ffffff]HP!"})
    elseif ItemID == "G. APPLE" then
       HealKarma(40)
       BattleDialog({"I eat the [color:ffff00]Golden Apple.[w:5]\nI feel stronger![w:5][color:ffffff] \n[w:5]I Recovered [color:ffff00]40[color:ffffff] HP!"})
    end
end