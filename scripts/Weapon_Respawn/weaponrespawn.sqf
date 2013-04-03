// Läuft
if (!(local player)) exitWith {};

Private ["_weapons","_magazines","_p"];

//alle EventHandler für den Spieler
player addeventhandler ["hit",
{
	_hit = _this select 2;
	_sqf = [0.5 + _hit] spawn bis_ew_fnc_screen;
	"dynamicblur" ppeffectenable true;
	"dynamicblur" ppeffectadjust [1];
	"dynamicblur" ppeffectcommit 0;
	"dynamicblur" ppeffectadjust [0];
	"dynamicblur" ppeffectcommit (1 + random 1);
}];
player addeventhandler ["killed",
{
	[] spawn {
		for "_i" from 0 to 5 do {_sqf = [1] spawn bis_ew_fnc_screen; sleep 0.1;};
	};
}];
player addeventhandler ["animchanged",
{
	_anim = _this select 1;
	if (_anim in [
		"amovppnemstpsraswrfldnon_amovppnemevaslowwrfldl",
		"amovppnemstpsraswrfldnon_amovppnemevaslowwrfldr"
	]) then {
		sqf = [1,true] spawn bis_ew_fnc_screen;
	};
}];

// alten Waffen nach Respawn
while {true} do
{
 //Warten auf neue Spielfigur
  waitUntil {!alive player};
  _weapons = weapons player;
  _magazines = magazines player;
  waitUntil {alive player};
  _p = player;
  removeAllItems _p;
  removeAllWeapons _p;
  removeGoggles _p; 
  removeHeadgear _p; 
  removeVest _p; 
  removeUniform _p; 
  removeAllAssignedItems _p;
  _p addgoggles "G_Shades_Black";
  _p addheadgear "H_Cap_brn_SERO"; 
  _p adduniform "U_B_CombatUniform_mcam"; 
  _p addweapon "hgun_P07_F"; 
  _p addMagazine "30Rnd_9x21_Mag"; 
  _p additem "FirstAidKit";
  _p addWeapon "ItemMap"; 
  _p addWeapon "ItemCompass";
  _p addWeapon "Binocular";

  {_p addMagazine _x} forEach _magazines;
  {_p addWeapon   _x} forEach _weapons;
};