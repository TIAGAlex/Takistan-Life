#include <macro.h>
/*
	File: fn_adminFeed.sqf
	Author: Michael Francis
 
	Description:
	Feeds a selected player
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};

[[player],"life_fnc_feedPlayer",_unit,false] spawn life_fnc_MP;