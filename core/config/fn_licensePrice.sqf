/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {30000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {5000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {12000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {17000}; //Heroin processing license cost
	case "marijuana": {15000}; //Marijuana processing license cost
	case "medmarijuana": {15000}; //Medical Marijuana processing license cost
	case "gang": {14500}; //Gang license cost
	case "rebel": {50000}; //Rebel license cost
	case "truck": {5000}; //Truck license cost
	case "diamond": {25000};
	case "salt": {6500};
	case "cocaine": {16500};
	case "sand": {5500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {45000};
	case "methl": {20000};
	case "methm": {30000};
	case "methb": {45000};
	case "passport": {1000000};
	case "pmc": {1000000};
	case "amia": {1000000};
};