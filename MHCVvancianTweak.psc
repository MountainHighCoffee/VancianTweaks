scriptName MHCvanciantweak extends activemagiceffect

;-- Properties --------------------------------------
actor property PlayerRef auto
globalvariable property ORD_Alt_NewVancianMagic_Global_Count auto
globalvariable property ORD_Alt_NewVancianMagic_Global_Count_Max auto
perk property ORD_Alt50_IntuitiveMagic_Perk_80
perk property ORD_Alt50_IntuitiveMagic_Perk_50

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function CantripsandScrolls(Form akSpell, Actor akytarget)

	if akSpell as scroll && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max
		ORD_Alt_NewVancianMagic_Global_Count.Mod(+1 as Float)
	elseif ak.target(HasPerk(ORD_Alt50_IntuitiveMagic_Perk_50)) && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max && PlayerRef.GetEquippedSpell(0) as Form == akSpell || PlayerRef.GetEquippedSpell(1) as Form == akSpell)
		ORD_Alt_NewVancianMagic_Global_Count.Mod(+1 as Float)
	elseif ak.target(HasPerk(ORD_Alt50_IntuitiveMagic_Perk_80)) && ORD_Alt_NewVancianMagic_Global_Count <= ORD_Alt_NewVancianMagic_Global_Count_Max && PlayerRef.GetEquippedSpell(0) as Form == akSpell || PlayerRef.GetEquippedSpell(1) as Form == akSpell)
		ORD_Alt_NewVancianMagic_Global_Count.Mod(+1 as Float)
	endIf
endFunction

