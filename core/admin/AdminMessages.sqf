if (playerSide != west) then
{
    // Police Messages
    _text1 = parseText format ["<t color='#1BCADE' size='1'>All Police Officer Must Be On Teamspeak, The Ip Is On The Map.</t>"];
    // Global Messages
    _text6 = parseText format ["<t color='#1BCADE' size='1'>WELCOME, TIA STATS LOADED</t>"];
    while {true} do
    {
	hint _text1;
	sleep 400;
    };
};

if (playerSide != independent) then
{
    // Medic Messages
    _text5 = parseText format ["<t color='#1BCADE' size='1'>All Medics Must Be On Teamspeak, The Ip Is On The Map.</t>"];
    // Global Messages
    _text6 = parseText format ["<t color='#1BCADE' size='1'>WELCOME, TIA STATS LOADED</t>"];
    while {true} do
    {
        hint _text5;
        sleep 400;
    };
};

if (playerSide != civilian) then
{
    // Civilian Messages
    _text2 = parseText format ["<t color='#1BCADE' size='1'>Please Sync Data Regularly ! Failing To Do So May Result In The Loss Of Your Equipment!</t>"];
    _text3 = parseText format ["<t color='#1BCADE' size='1'>If You Require Assistance With Anything In Relation To Our Server, Please Connect To Our TS3!</t>"];
    _text4 = parseText format ["<t color='#1BCADE' size='1'>Join Us On Teamspeak! The IP is TIAG.TS3DNS.COM !</t>"];
    // Global Messages
    _text6 = parseText format ["<t color='#1BCADE' size='1'>WELCOME, TIAG STATS LOADED</t>"];
    while {true} do
    {
	hint _text2;
        sleep 400;
        hint _text3;
        sleep 400;
        hint _text4;
        sleep 400;
    };
};