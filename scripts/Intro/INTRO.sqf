private ["_hours","_minutes"];

if (local player) then 
{
	waitUntil{!(isNil "BIS_fnc_init")};
	sleep 3;

	_hours = str(date select 3);
	_minutes = str(date select 4);
	
	if ((date select 3)<10) then {_hours="0"+(str(date select 3));};
	if ((date select 4)<10) then {_minutes="0"+(str(date select 4));};
	
	[str(localize "STR_MISSION_NAME"),str(date select 2) + "." + str(date select 1) + "." + str(date select 0) + "," + str(date select 3) + ":" + str(date select 4),str(localize "STR_MISSION_LOCATION")] spawn BIS_fnc_infoText;
};