#include <macro.h>
/*
	File: fn_openAdmin.sqf
	Author: Jack "Scarso" Farhall
	
	Description:
	Opens The Admin Menu
*/
if(FETCH_CONST(life_adminlevel) < 1) exitWith {closeDialog 0; hint "YOUR NOT A FUCKING ADMIN";};
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "life_admin_menu";
disableSerialization;