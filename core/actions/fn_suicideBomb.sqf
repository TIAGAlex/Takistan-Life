/*
    ALAH SNACKBAR!
    Created By: HMAF Alex
    Use in HMAF Gaming Altis life
*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
sleep 1;
[[0,format["%1 went Alah Akbhar!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

_test = "Bo_Mk82" createVehicle [0,0,1500000];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};