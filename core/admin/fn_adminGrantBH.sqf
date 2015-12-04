#include <macro.h>
/*	
	File: fn_adminGrantBH.sqf
	Author: Kevin Webb
	
	Description:
	Allows the chosen player to purchase a bounty hunter's license only in this particular server session.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(_unit getVariable["criminal",false]) exitWith { hint "This person cannot be approved for BH status right now, as they were arrested during this server session.";};

_unit setVariable["approved",true,true];
