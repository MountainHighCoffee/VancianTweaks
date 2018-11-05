scriptName MHCvanciantweak extends activemagiceffect

;-- Properties --------------------------------------
actor property PlayerRef auto
globalvariable property ORD_Alt_NewVancianMagic_Global_Count auto
globalvariable property ORD_Alt_NewVancianMagic_Global_Count_Max auto
perk property ORD_Alt50_IntuitiveMagic_Perk_80
perk property ORD_Alt50_IntuitiveMagic_Perk_50

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Scrolls(Form akSpell)

	Int spellslots = ORD_Alt_NewVancianMagic_Global_Count.GetValue() as Int
	
	if spellslots == 0
		ORD_Alt_NewVancianMagic_Global_Count.Mod(+0 as Float)
	else
		if akSpell as scroll && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max
			ORD_Alt_NewVancianMagic_Global_Count.Mod(+2 as Float)
		endif
	endif
	
endFunction

function Cantrips(Form akSpell, Actor aktarget)

	Int spellslots = ORD_Alt_NewVancianMagic_Global_Count.GetValue() as Int
	
	if spellslots == 0
		ORD_Alt_NewVancianMagic_Global_Count.Mod(+0 as Float)
	else
		if ak.target(HasPerk(ORD_Alt50_IntuitiveMagic_Perk_50)) && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max && PlayerRef.GetEquippedSpell(0) as Form == akSpell || PlayerRef.GetEquippedSpell(1) as Form == akSpell)
			ORD_Alt_NewVancianMagic_Global_Count.Mod(+2 as Float)
		elseif ak.target(HasPerk(ORD_Alt50_IntuitiveMagic_Perk_80)) && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max && PlayerRef.GetEquippedSpell(0) as Form == akSpell || PlayerRef.GetEquippedSpell(1) as Form == akSpell)
			ORD_Alt_NewVancianMagic_Global_Count.Mod(+2 as Float)
		endif
	endif
	
endFunction