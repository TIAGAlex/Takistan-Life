/*
Script file made by: Maximum
Idea based off: Liemans script - did way to much to achieve the same thing.
Description: Lets a officer request backup VIA scroll menu, made for AltisLifeRPG.com
*/
private ["_backupmsg"];

[[0,"STR_Item_backup",true,[profileName]],"life_fnc_broadcast",west,false] call life_fnc_MP;
_backupmsg = createMarker [("_backupmsg" + name player), getPos player];
_backupmsg setmarkertype "mil_warning";
_backupmsg setmarkercolor "colorRed";
_backupmsg setmarkertext format ["%1 Is Requesting backup here",name player];
sleep 60;
deletemarker _backupmsg;
hint "Marker removed";
sleep 320;
hint format ["%1 You can now call for backup again",name player];