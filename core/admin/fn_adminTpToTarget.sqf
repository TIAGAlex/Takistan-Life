#include <macro.h>
/*
	File: fn_adminTpToTarget.sqf
	Author: Jack "Scarso" Farhall
	
	Description:
        Teleport you to the selected player.
*/
if(FETCH_CONST(life_adminlevel) < 1) exitWith {closeDialog 0;};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};

player setPos (getPos _target);
hint format["You have teleported to %1",_target getVariable["realname",name _target]];
