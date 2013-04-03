if(!X_Server) exitWith {};

//Civilian Vehicle List - Random Spawns
civilianVehicles = ["c_offroad","B_Quadbike_F", "O_Quadbike_F"];

//Military Vehicle List - Random Spawns
militaryVehicles = ["c_offroad","O_Galkin_F","B_Hunter_F"];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = ["B_Hunter_F","O_Galkin_F"];

private ["_marker","_cartype","_car","_num","_tipped","_carpos","_type","_townpos"];
_type = _this select 1;
_pos = _this select 0;

//Create Civilian Vehicle
if (_type == 0) then {
	//Car Initilization, Pick Car Type.
    _cartype = civilianVehicles select (random (count civilianVehicles - 1));
    _car = createVehicle [_cartype,_pos,[], 20,"None"];
	_car setVehicleInit "nul=[this, 60, 1200, 0, false] execVM 'scripts\Vehicle_respawn\vehicle.sqf'";
	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;
	
	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
};

//Create Military Vehicle
if (_type == 1) then {
	//Car Initilization, Pick Car Type.
    _cartype = militaryVehicles select (random (count militaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
	_car setVehicleInit "nul=[this, 60, 1200, 0, false] execVM 'scripts\Vehicle_respawn\vehicle.sqf'";
	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set authenticity
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
};

//Create Armed Military Vehicle
if (_type == 2) then {
	//Car Initilization, Pick Car Type.
    _cartype = armedMilitaryVehicles select (random (count armedMilitaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
    _car setVehicleInit "nul=[this, 60, 1200, 0, false] execVM 'scripts\Vehicle_respawn\vehicle.sqf'";
	processInitCommands;

	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
    _car setVehicleAmmo (random 0.90);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
};
