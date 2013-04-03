waitUntil {isDedicated or !isNull player};
//add marker names here
_Total = 472;// Respawn Punkte
respawn_marray = format["respawn_west%1",_Total];
c_respawnPos = {	
    _plr = _this select 0;
    if (!local _plr) exitWith {};
    //select random from the array
    _pos = markerPos (respawn_marray select (floor (random(count respawn_marray))));
    waitUntil {alive _plr};
    
    // check so the position is not 0,0,0
    if (count (_pos - [0]) > 0) then {
        _plr setpos _pos;
    };
};
player addEventHandler ["respawn", {_this spawn c_respawnPos}];  