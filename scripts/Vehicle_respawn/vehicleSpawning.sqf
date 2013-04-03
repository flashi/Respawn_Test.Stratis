if(!X_Server) exitWith {};

vehicleCreation = compile preprocessFileLineNumbers "scripts\Vehicle_respawn\vehicleCreation.sqf";

private ["_counter","_pos","_type","_num","_markerName","_marker","_amountOfVehicles","_hint"];

_counter = 0;

for "_i" from 1 to 110 do
{
	_pos = getMarkerPos format ["Spawn_%1", _i];
	_type = 0;
    _num = floor (random 100);
	if (_num < 100) then {_type = 0;};
	if (_num < 35) then {_type = 1;};
	if (_num < 10) then {_type = 2;};
	[_pos, _type] call vehicleCreation;

	_counter = _counter + 1;
};