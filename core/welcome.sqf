/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;

sleep 5; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Welcome to TIAG!"; //In yellow
_role1names = [format["Welcome %1!",profileName]]; //In white
_role2 = "Police and EMS must join our teamspeak";
_role2names = ["Thisisarma.com"]; 
_role3 = "please make sure you have read the rules at";
_role3names = ["ThisIsArma.com"];
_role4 = "Apply for police/swat or staff at";
_role4names = ["Thisisarma.com/forum"];
_role5 = "Website and teamspeak";
_role5names = ["ThisIsArma.com"];
_role6 = "Enjoy your stay";
_role6names =[format["%1!",profileName]];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];