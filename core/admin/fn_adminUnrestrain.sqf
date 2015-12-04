#include <macro.h>
/*
	File: fn_adminUnrestrain.sqf
	Author: Kevin

	Description:
	Unrestrains the chosen player.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint "You can not unrestrain yourself";}; //Badmin check

[[0,format["%1 was unrestrained!",_unit getVariable["realname",name _unit]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
//Tells the server that an admin action has taken place.
[[player],"life_fnc_adminUnrestrainAction",_unit,false] spawn life_fnc_MP;