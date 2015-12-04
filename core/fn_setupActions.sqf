/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
        //Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
	    // Suicide Bomb
        life_actions = life_actions + [player addAction["Active explosive vest",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		// tie
		life_actions = life_actions + [player addAction["Tie person",life_fnc_tieingAction,cursorTarget,9999999,false,false,"",' 
		!isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !(cursorTarget getVariable "tied") && speed cursorTarget < 1 ']];
		//Untie
		life_actions = life_actions + [player addAction["Untie",life_fnc_untie,cursorTarget,0,false,false,"",' 
		!isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "Escorting") ']];
	};
};
case west:
	{
		//Call backup
		life_actions pushBack (player addAction["<t color='#ADFF2F'>Request Backup</t>",life_fnc_callbackup,"",0,FALSE,FALSE,""]);
		life_actions = life_actions + [player addAction["Untie",life_fnc_untie,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "Escorting") ']];
	};