-- Frisk's body in fight (not intro)
frisklegs = CreateSprite("frisk/legs/frisklegs")
frisktorso = CreateSprite("frisk/torso/torso1")
friskgun = CreateSprite("frisk/leftarm/gun/gun1")
friskrightarm = CreateSprite("frisk/rightarm/rightarm1")
friskhead = CreateSprite("frisk/head/head1")
friskheadepic = CreateSprite("frisk/head/epic/head1")

friskheadepic.SendToBottom()

function StartEpic()
	friskhead.SendToBottom()
	friskheadepic.SendToTop()
end
function EndEpic()
	friskhead.SendToTop()
	friskheadepic.SendToBottom()
end
-- Placement for stuff
friskhead.y = 305
frisklegs.y = 305
friskrightarm.y = 305
friskgun.y = 305
frisktorso.y = 305
friskheadepic.y = 305
-- some animations made by the power of .pngs
frisklegs.SetAnimation({"frisk/legs/frisklegs", "frisk/legs/frisklegs", "frisk/legs/frisklegs2", "frisk/legs/frisklegs3", "frisk/legs/frisklegs4", "frisk/legs/frisklegs4", "frisk/legs/frisklegs3", "frisk/legs/frisklegs2", "frisk/legs/frisklegs"}, 1/4.25)
frisktorso.SetAnimation({"frisk/torso/torso1", "frisk/torso/torso1", "frisk/torso/torso2", "frisk/torso/torso3", "frisk/torso/torso4", "frisk/torso/torso4", "frisk/torso/torso3", "frisk/torso/torso2", "frisk/torso/torso1"}, 1/4.25)
friskhead.SetAnimation({"frisk/head/head1", "frisk/head/head1", "frisk/head/head2", "frisk/head/head3", "frisk/head/head4", "frisk/head/head4", "frisk/head/head3", "frisk/head/head2", "frisk/head/head1"}, 1/4.25)
friskrightarm.SetAnimation({"frisk/rightarm/rightarm1", "frisk/rightarm/rightarm1", "frisk/rightarm/rightarm2", "frisk/rightarm/rightarm3", "frisk/rightarm/rightarm4", "frisk/rightarm/rightarm4", "frisk/rightarm/rightarm3", "frisk/rightarm/rightarm2", "frisk/rightarm/rightarm1"}, 1/4.25)
friskgun.SetAnimation({"frisk/leftarm/gun/gun1", "frisk/leftarm/gun/gun1", "frisk/leftarm/gun/gun2", "frisk/leftarm/gun/gun3", "frisk/leftarm/gun/gun4", "frisk/leftarm/gun/gun4", "frisk/leftarm/gun/gun3", "frisk/leftarm/gun/gun2", "frisk/leftarm/gun/gun1"}, 1/4.25)
friskheadepic.SetAnimation({"frisk/head/epic/head1", "frisk/head/epic/head1", "frisk/head/epic/head2", "frisk/head/epic/head3", "frisk/head/epic/head4", "frisk/head/epic/head4", "frisk/head/epic/head3", "frisk/head/epic/head2", "frisk/head/epic/head1"}, 1/4.25)

-- Animations made without the power of .pngs
function AnimateFrisk()
end