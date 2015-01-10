local mutator = {}

mutator.Base = "default"
mutator.Name = "#JB_BR_RoundTypeMelee_Title"
mutator.Description = "#JB_BR_RoundTypeMelee_Desc"

mutator.ItemPool = {
	"weapon_crowbar",
	"weapon_drilldo",
	"weapon_handgun",
	"weapon_knife",
	"weapon_rocketcrowbar"
}

mutators:Register( "melee", mutator )

function mutator:OnWeaponEquipped( pl, weap )
	if( weap and ( weap:GetClassname() == "weapon_knife" or weap:GetClassname() == "weapon_rocketcrowbar" ) ) then
		weap:AddCondition( JB_WEAPON_CONDITION_NO_SECONDARY )
	end
end