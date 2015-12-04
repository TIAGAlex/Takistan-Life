//Create meth zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Meth = player addAction['Methzutaten stehlen',life_fnc_gatherMeth,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Meth;"];
} foreach _methZones;