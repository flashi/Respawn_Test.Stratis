//  UPS_init.sqf
// © JULY 2009 - norrin

_unit 	= _this select 0;
_marker	= _this select 1;

[_unit,_marker] execVM "scripts\AI_respawn_UPS\ups.sqf";

if (true) exitWith {};