#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",5000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,6000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,15000],
						["SMG_02_ACO_F",nil,12500],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,12500],
						["hgun_ACPC2_F",nil,7500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,15000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
						
					]
				];
			};
		};
	};
	
    case "cop_S.W.A.T":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["Special Response shop",
								            [
                                                ["srifle_LRR_SOS_F",nil,30000],
                                                ["7Rnd_408_Mag",nil,3000],
												["srifle_DMR_03_SOS_F",nil,30000],
												["20Rnd_762x51_Mag",nill,100],
                                                ["arifle_MXM_Black_F",nil,12000],
                                                ["arifle_MX_SW_Black_Hamr_pointer_F",nil,12000],
                                                ["30Rnd_65x39_caseless_mag",nil,100],
                                                ["LMG_Mk200_MRCO_F",nil,20000],
                                                ["200Rnd_65x39_cased_Box",nil,100],
                                                ["optic_MRCO",nil,100],
                                                ["optic_SOS",nil,100],
												["srifle_DMR_02_sniper_AMS_LP_S_F",nil,50000],
												["10Rnd_338_Mag",nil,100]
											]
                                ];
                        };
                };
        };
		
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			case (license_civ_amia): {"Your amia agent you are not allowed "};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,35000],
						["arifle_Katiba_F",nil,45000],
						["srifle_DMR_01_F",nil,50000],
						["srifle_DMR_06_camo_khs_F",nil,60000],
						["arifle_SDAR_F",nil,25000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x54_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_762x51_Mag",nil,250]
					]
				];
			};
		};
	};
	
	case "pmc":
		{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_pmc): {"You don't have a Rebel training license!"};
			case (license_civ_amia): {"Your amia agent you are not allowed "};
			default
			{
				["PMC Shop",
					[
						["arifle_TRG20_F",nil,35000],
						["arifle_Katiba_F",nil,45000],
						["srifle_DMR_01_F",nil,50000],
						["srifle_DMR_06_camo_khs_F",nil,60000],
						["arifle_SDAR_F",nil,25000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x54_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["20Rnd_762x51_Mag",nil,250]
					]
				];
			};
		};
	};
	
		case "amia":
		{
		switch(true) do
		{
			case (playerSide != civilian): {"Please get out this is amia"};
			case (!license_civ_amia): {"Please get out of my house"};
			default
			{
				["amia Shop",
					[
						["srifle_EBR_ARCO_pointer_snds_F",nil,45000],
						["hgun_ACPC2_snds_F",nil,45000],
						["hgun_Pistol_heavy_01_snds_F",nil,50000],
						["SMG_01_Holo_pointer_snds_F",nil,60000],
						["20Rnd_762x51_Mag",nil,200],
						["9Rnd_45ACP_Mag",nil,125],
						["11Rnd_45ACP_Mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,7500],
						["hgun_Pistol_heavy_02_F",nil,12250],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,19500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,2670],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,19000],
						["hgun_ACPC2_F",nil,17600],
						["hgun_PDW2000_F",nil,50000],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,2670],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
