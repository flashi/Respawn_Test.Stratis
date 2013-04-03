execVM "scripts\Weapon_Respawn\weaponrespawn.sqf"
execVM "scripts\Vehicle_respawn\vehicleSpawning.sqf";
execVM "scripts\PlayerRespawn\PlayerRespawn.sqf"
execVM "Briefing.sqf";

5 CutText ["","BLACK FADED",1];

waitUntil { isServer ||!isNull player }; 

if (!(isDedicated)) then
{
	[] execVM "scripts\Intro\Intro.sqf";
};

sleep 2;

5 CutText ["","BLACK IN",5];